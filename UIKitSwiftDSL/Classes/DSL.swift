import UIKit
import ARKit
import SceneKit
import SpriteKit
import WebKit
import MapKit
import MetalKit

public func view(apply closure: (UIView) -> Void) -> UIView {
    let view = UIView()
    closure(view)
    return view
}

public func stack(apply closure: (UIStackView) -> Void) -> UIStackView {
    let stack = UIStackView()
    closure(stack)
    return stack
}

extension UIView {
    func add(_ view: UIView) {
        if let stack = self as? UIStackView {
            stack.addArrangedSubview(view)
        } else {
            addSubview(view)
        }
    }
}

extension UIView {
    @discardableResult
    public func custom<View: UIView>(_ view: View, apply closure: (View) -> Void) -> View {
        add(view)
        closure(view)
        return view
    }
}

extension UIView {
    @discardableResult
    public func stack(apply closure: (UIStackView) -> Void) -> UIStackView {
        return custom(UIStackView(), apply: closure)
    }

    @discardableResult
    public func view(apply closure: (UIView) -> Void) -> UIView {
        return custom(UIView(), apply: closure)
    }

    @discardableResult
    public func button(with type: UIButton.ButtonType = .system,
                apply closure: (UIButton) -> Void) -> UIButton {
        return custom(UIButton(type: type), apply: closure)
    }

    @discardableResult
    public func label(apply closure: (UILabel) -> Void) -> UILabel {
        return custom(UILabel(), apply: closure)
    }

    @discardableResult
    public func segmentedControl(with items: [Any]? = nil,
                          apply closure: (UISegmentedControl) -> Void) -> UISegmentedControl {
        return custom(UISegmentedControl(items: items), apply: closure)
    }

    @discardableResult
    public func textField(apply closure: (UITextField) -> Void) -> UITextField {
        return custom(UITextField(), apply: closure)
    }

    @discardableResult
    public func slider(apply closure: (UISlider) -> Void) -> UISlider {
        return custom(UISlider(), apply: closure)
    }

    @discardableResult
    public func uiswitch(apply closure: (UISwitch) -> Void) -> UISwitch {
        return custom(UISwitch(), apply: closure)
    }

    @discardableResult
    public func activityIndicator(with style: UIActivityIndicatorView.Style = .white,
                           apply closure: (UIActivityIndicatorView) -> Void) -> UIActivityIndicatorView {
        return custom(UIActivityIndicatorView(style: style), apply: closure)
    }

    @discardableResult
    public func progress(with style: UIProgressView.Style = .default,
                  apply closure: (UIProgressView) -> Void) -> UIProgressView {
        return custom(UIProgressView(progressViewStyle: style), apply: closure)
    }

    @discardableResult
    public func pageControl(apply closure: (UIPageControl) -> Void) -> UIPageControl {
        return custom(UIPageControl(), apply: closure)
    }

    @discardableResult
    public func stepper(apply closure: (UIStepper) -> Void) -> UIStepper {
        return custom(UIStepper(), apply: closure)
    }

    @discardableResult
    public func table(with style: UITableView.Style = .plain,
               apply closure: (UITableView) -> Void) -> UITableView {
        return custom(UITableView(frame: .zero, style: style), apply: closure)
    }

    @discardableResult
    public func image(apply closure: (UIImageView) -> Void) -> UIImageView {
        return custom(UIImageView(), apply: closure)
    }

    @discardableResult
    public func collection(apply closure: (UICollectionView) -> Void) -> UICollectionView {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        return custom(collectionView, apply: closure)
    }

    @discardableResult
    public func textView(apply closure: (UITextView) -> Void) -> UITextView {
        return custom(UITextView(), apply: closure)
    }

    @discardableResult
    public func datePicker(apply closure: (UIDatePicker) -> Void) -> UIDatePicker {
        return custom(UIDatePicker(), apply: closure)
    }

    @discardableResult
    public func scroll(apply closure: (UIScrollView) -> Void) -> UIScrollView {
        return custom(UIScrollView(), apply: closure)
    }

    @discardableResult
    public func picker(apply closure: (UIPickerView) -> Void) -> UIPickerView {
        return custom(UIPickerView(), apply: closure)
    }

    @discardableResult
    public func searchBar(apply closure: (UISearchBar) -> Void) -> UISearchBar {
        return custom(UISearchBar(), apply: closure)
    }

    @discardableResult
    public func toolbar(apply closure: (UIToolbar) -> Void) -> UIToolbar {
        return custom(UIToolbar(), apply: closure)
    }

    @discardableResult
    public func tabBar(apply closure: (UITabBar) -> Void) -> UITabBar {
        return custom(UITabBar(), apply: closure)
    }

    @discardableResult
    public func navigationBar(apply closure: (UINavigationBar) -> Void) -> UINavigationBar {
        return custom(UINavigationBar(), apply: closure)
    }

    @discardableResult
    public func webView(with config: WKWebViewConfiguration,
                 apply closure: (WKWebView) -> Void) -> WKWebView {
        return custom(WKWebView(frame: .zero, configuration: config), apply: closure)
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func arSceneView(apply closure: (ARSCNView) -> Void) -> ARSCNView {
        return custom(ARSCNView(), apply: closure)
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func arSpriteView(apply closure: (ARSKView) -> Void) -> ARSKView {
        return custom(ARSKView(), apply: closure)
    }

    @discardableResult
    public func sceneView(apply closure: (SCNView) -> Void) -> SCNView {
        return custom(SCNView(), apply: closure)
    }

    @discardableResult
    public func spriteView(apply closure: (SKView) -> Void) -> SKView {
        return custom(SKView(), apply: closure)
    }

    @discardableResult
    public func map(apply closure: (MKMapView) -> Void) -> MKMapView {
        return custom(MKMapView(), apply: closure)
    }

    @discardableResult
    public func metal(apply closure: (MTKView) -> Void) -> MTKView {
        return custom(MTKView(), apply: closure)
    }

    @discardableResult
    public func visualEffect(with effect: UIVisualEffect? = nil,
                      apply closure: (UIVisualEffectView) -> Void) -> UIVisualEffectView {
        return custom(UIVisualEffectView(effect: effect), apply: closure)
    }
}
