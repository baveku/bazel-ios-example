import Foundation
import AsyncDisplayKit
import Comier
import IGListKit

open class Whatehell {
    public let vc = ASDKViewController(node: MainNode())
    public init() {
		
	}
}

public final class MainNode: ASMNode {
	let buttonNode = ASActivityButtonNode()
	
	public override init() {
		super.init()
		backgroundColor = .white
	}
	
	public override func didLoad() {
		super.didLoad()
		buttonNode.activityView.color = .purple
		buttonNode.startLoading()
	}
	
	public override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
		LayoutSpec {
			CenterLayout {
				buttonNode.preferredSize(.init(width: 24, height: 24))
			}
		}
	}
}
