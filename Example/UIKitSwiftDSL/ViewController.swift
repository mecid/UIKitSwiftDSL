//
//  ViewController.swift
//  UIKitSwiftDSL
//
//  Created by Majid Jabrayilov on 01/20/2019.
//  Copyright (c) 2019 Majid Jabrayilov. All rights reserved.
//

import UIKitSwiftDSL

class ViewController: UIViewController {
    override func loadView() {
        view = stack {
            $0.axis = .vertical
            $0.isLayoutMarginsRelativeArrangement = true

            $0.stack {
                $0.axis = .horizontal

                $0.label {
                    $0.textColor = .white
                    $0.text = "Hello"
                }

                $0.label {
                    $0.textColor = .white
                    $0.text = "World"
                }

                $0.label {
                    $0.textColor = .white
                    $0.text = "!!!"
                }
            }

            $0.button {
                $0.tintColor = .white
                $0.setTitle("Say Hi!", for: .normal)
            }

            $0.view {
                $0.backgroundColor = .clear
            }
        }
    }
}

