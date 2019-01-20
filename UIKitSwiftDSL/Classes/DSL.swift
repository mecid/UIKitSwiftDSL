import UIKit
import ARKit
import SceneKit
import SpriteKit
import WebKit
import MapKit
import MetalKit

@discardableResult
func view(apply closure: (UIView) -> Void) -> UIView {
    let view = UIView()
    closure(view)
    return view
}

@discardableResult
func stack(apply closure: (UIStackView) -> Void) -> UIStackView {
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
    func custom<View: UIView>(_ view: View, apply closure: (View) -> Void) -> View {
        add(view)
        closure(view)
        return view
    }
}

extension UIView {
    @discardableResult
    func stack(apply closure: (UIStackView) -> Void) -> UIStackView {
        return custom(UIStackView(), apply: closure)
    }

    @discardableResult
    func view(apply closure: (UIView) -> Void) -> UIView {
        return custom(UIView(), apply: closure)
    }

    @discardableResult
    func button(with type: UIButton.ButtonType = .system,
                apply closure: (UIButton) -> Void) -> UIButton {
        return custom(UIButton(type: type), apply: closure)
    }

    @discardableResult
    func label(apply closure: (UILabel) -> Void) -> UILabel {
        return custom(UILabel(), apply: closure)
    }

    @discardableResult
    func segmentedControl(with items: [Any]? = nil,
                          apply closure: (UISegmentedControl) -> Void) -> UISegmentedControl {
        return custom(UISegmentedControl(items: items), apply: closure)
    }

    @discardableResult
    func textField(apply closure: (UITextField) -> Void) -> UITextField {
        return custom(UITextField(), apply: closure)
    }

    @discardableResult
    func slider(apply closure: (UISlider) -> Void) -> UISlider {
        return custom(UISlider(), apply: closure)
    }

    @discardableResult
    func uiswitch(apply closure: (UISwitch) -> Void) -> UISwitch {
        return custom(UISwitch(), apply: closure)
    }

    @discardableResult
    func activityIndicator(with style: UIActivityIndicatorView.Style = .white,
                           apply closure: (UIActivityIndicatorView) -> Void) -> UIActivityIndicatorView {
        return custom(UIActivityIndicatorView(style: style), apply: closure)
    }

    @discardableResult
    func progress(with style: UIProgressView.Style = .default,
                  apply closure: (UIProgressView) -> Void) -> UIProgressView {
        return custom(UIProgressView(progressViewStyle: style), apply: closure)
    }

    @discardableResult
    func pageControl(apply closure: (UIPageControl) -> Void) -> UIPageControl {
        return custom(UIPageControl(), apply: closure)
    }

    @discardableResult
    func stepper(apply closure: (UIStepper) -> Void) -> UIStepper {
        return custom(UIStepper(), apply: closure)
    }

    @discardableResult
    func table(with style: UITableView.Style = .plain,
               apply closure: (UITableView) -> Void) -> UITableView {
        return custom(UITableView(frame: .zero, style: style), apply: closure)
    }

    @discardableResult
    func image(apply closure: (UIImageView) -> Void) -> UIImageView {
        return custom(UIImageView(), apply: closure)
    }

    @discardableResult
    func collection(apply closure: (UICollectionView) -> Void) -> UICollectionView {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: UICollectionViewFlowLayout()
        )
        return custom(collectionView, apply: closure)
    }

    @discardableResult
    func textView(apply closure: (UITextView) -> Void) -> UITextView {
        return custom(UITextView(), apply: closure)
    }

    @discardableResult
    func datePicker(apply closure: (UIDatePicker) -> Void) -> UIDatePicker {
        return custom(UIDatePicker(), apply: closure)
    }

    @discardableResult
    func scroll(apply closure: (UIScrollView) -> Void) -> UIScrollView {
        return custom(UIScrollView(), apply: closure)
    }

    @discardableResult
    func picker(apply closure: (UIPickerView) -> Void) -> UIPickerView {
        return custom(UIPickerView(), apply: closure)
    }

    @discardableResult
    func searchBar(apply closure: (UISearchBar) -> Void) -> UISearchBar {
        return custom(UISearchBar(), apply: closure)
    }

    @discardableResult
    func toolbar(apply closure: (UIToolbar) -> Void) -> UIToolbar {
        return custom(UIToolbar(), apply: closure)
    }

    @discardableResult
    func tabBar(apply closure: (UITabBar) -> Void) -> UITabBar {
        return custom(UITabBar(), apply: closure)
    }

    @discardableResult
    func navigationBar(apply closure: (UINavigationBar) -> Void) -> UINavigationBar {
        return custom(UINavigationBar(), apply: closure)
    }

    @discardableResult
    func webView(with config: WKWebViewConfiguration,
                 apply closure: (WKWebView) -> Void) -> WKWebView {
        return custom(WKWebView(frame: .zero, configuration: config), apply: closure)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func arSceneView(apply closure: (ARSCNView) -> Void) -> ARSCNView {
        return custom(ARSCNView(), apply: closure)
    }

    @available(iOS 11.0, *)
    @discardableResult
    func arSpriteView(apply closure: (ARSKView) -> Void) -> ARSKView {
        return custom(ARSKView(), apply: closure)
    }

    @discardableResult
    func sceneView(apply closure: (SCNView) -> Void) -> SCNView {
        return custom(SCNView(), apply: closure)
    }

    @discardableResult
    func spriteView(apply closure: (SKView) -> Void) -> SKView {
        return custom(SKView(), apply: closure)
    }

    @discardableResult
    func map(apply closure: (MKMapView) -> Void) -> MKMapView {
        return custom(MKMapView(), apply: closure)
    }

    @discardableResult
    func metal(apply closure: (MTKView) -> Void) -> MTKView {
        return custom(MTKView(), apply: closure)
    }

    @discardableResult
    func visualEffect(with effect: UIVisualEffect? = nil,
                      apply closure: (UIVisualEffectView) -> Void) -> UIVisualEffectView {
        return custom(UIVisualEffectView(effect: effect), apply: closure)
    }
}
