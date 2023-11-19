//
//  SnapshotTestCase.swift
//  SnapshotTest
//
//  Created by Hoang Nguyen on 19/11/23.
//

import FBSnapshotTestCase

open class SnapshotTestCase: FBSnapshotTestCase {
  private var referenceImageDirectory: String?
  private var imageDiffDirectory: String?
  
  open func overallTolerance() -> CGFloat { return 0.01 }
  open func perPixelTolerance() -> CGFloat { return 0 }
  
  open func verifyView(_ view: UIView,
                       file: StaticString = #file,
                       line: UInt = #line)
  {
    let directory = ("\(file)" as NSString).deletingLastPathComponent
    referenceImageDirectory = NSString.path(withComponents: [directory, "ReferenceImages"])
    imageDiffDirectory = NSString.path(withComponents: [directory, "FailureDiffs"])
    FBSnapshotVerifyView(
      view,
      identifier: nil,
      perPixelTolerance: perPixelTolerance(),
      overallTolerance: overallTolerance(),
      file: file,
      line: line
    )
  }
  
  open func verifyViewController(_ viewController: UIViewController,
                                 file: StaticString = #file,
                                 line: UInt = #line)
  {
    let directory = ("\(file)" as NSString).deletingLastPathComponent
    referenceImageDirectory = NSString.path(withComponents: [directory, "ReferenceImages"])
    imageDiffDirectory = NSString.path(withComponents: [directory, "FailureDiffs"])
    
    FBSnapshotVerifyViewController(
      viewController,
      identifier: nil,
      perPixelTolerance: perPixelTolerance(),
      overallTolerance: overallTolerance(),
      file: file,
      line: line
    )
  }
  
  open func verifyViewWithTolerance(_ view: UIView,
                                    identifier: String? = nil,
                                    file: StaticString = #file,
                                    line: UInt = #line)
  {
    view.layoutIfNeeded()
    FBSnapshotVerifyView(view, identifier: identifier,
                         perPixelTolerance: perPixelTolerance(),
                         overallTolerance: overallTolerance(),
                         file: file,
                         line: line)
  }
  
  open func verifyFullScreenViewInWindowWithSafeArea(_ view: UIView,
                                                     file: StaticString = #file,
                                                     line: UInt = #line)
  {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.addSubview(view)
    window.makeKeyAndVisible()
    view.frame = UIScreen.main.bounds
    verifyViewWithTolerance(view, file: file, line: line)
  }
  
  override open func getReferenceImageDirectory(withDefault _: String?) -> String {
    guard let referenceImageDirectory = referenceImageDirectory else {
      fatalError("Do not call FBSnapshotVerifyView or FBSnapshotVerifyViewController directly, use verifyView or verifyViewController instead.")
    }
    return referenceImageDirectory
  }
  
  override open func getImageDiffDirectory(withDefault _: String?) -> String {
    guard let imageDiffDirectory = imageDiffDirectory else {
      fatalError("Do not call FBSnapshotVerifyView or FBSnapshotVerifyViewController directly, use verifyView or verifyViewController instead.")
    }
    return imageDiffDirectory
  }
}
