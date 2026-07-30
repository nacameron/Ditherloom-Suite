# Third-Party Notices

This release bundles third-party components and assets. Their own license terms continue to apply.

Neil Cameron claims copyright and, where applicable, related rights in the project-owned Ditherloom Suite application, Ditherloom-Advanced source and compiled implementation, deterministic multi-gate sequence, project-trained ONNX gate weights, project-created calibration/model data and validation manifests, documentation, branding, artwork, templates, custom firmware and Gateway implementation.

Those project-owned Ditherloom Suite materials are offered under the PolyForm Noncommercial License 1.0.0 unless a separate written licence says otherwise.

The project copyright notice and PolyForm licence do not re-license third-party components, runtimes, tools, OpenMoji artwork, ESP-IDF, esptool, or stock/original PicPak firmware, and they do not remove any attribution, share-alike, source, or notice obligations attached to them.

## Desktop Interface Runtime

- PySide6, PySide6 Essentials, PySide6 Addons, Shiboken6, and Qt 6.
- Use: current Ditherloom Suite desktop interface.
- Licence choice used by this distribution: GNU Lesser General Public License version 3.
- Source: https://code.qt.io/cgit/pyside/pyside-setup.git/ and https://download.qt.io/official_releases/qt/
- Bundled terms and relinking instructions: `licenses/LGPL-3.0.txt`, `licenses/GPL-3.0.txt`, and `licenses/QT_REPLACEMENT_INSTRUCTIONS.md`.
- Qt libraries and plugins remain separate replaceable files in the folder package.
- The replacement instructions include the corresponding-source locations and three-year source offer for the exact PySide6, Shiboken6 and Qt version distributed.

## CPython

- Use: packaged application runtime.
- Licence: Python Software Foundation License and bundled third-party notices.
- Source and licence: https://docs.python.org/3/license.html

## PyInstaller

- Use: folder-application bootloader and packaging tool.
- Licence: GPLv2-or-later with the PyInstaller bootloader exception permitting distribution of non-free programs.
- Source and licence: https://pyinstaller.org/en/stable/license.html

## Inno Setup

- Use: creation of the Windows installer and uninstaller.
- Licence: Inno Setup License, a permissive licence requiring retained copyright and origin notices in redistributed binary forms.
- Copyright (C) 1997-2026 Jordan Russell. All rights reserved.
- Portions Copyright (C) 2000-2026 Martijn Laan. All rights reserved.
- Source, licence, and project site: https://jrsoftware.org/isinfo.php

## Tcl/Tk Runtime

- Use: compatibility runtime imported by the legacy backend that remains part of the current PySide6 folder build. The current interface is PySide6, but Tcl/Tk libraries are still frozen into the distributed runtime.
- Licence: Tcl/Tk BSD-style licence.
- Source: https://www.tcl-lang.org/software/tcltk/
- Bundled terms: `licenses/runtime/Tcl-Tk-license.terms`.

## setuptools

- Use: frozen Python runtime metadata and import support.
- Licence: MIT License. Components vendored by setuptools retain their own permissive terms.
- Source: https://github.com/pypa/setuptools
- Bundled terms: `licenses/runtime/setuptools-LICENSE.txt` and `licenses/runtime/setuptools-vendored/`.

## OpenMoji

- Use: emoji and sticker artwork.
- License: Creative Commons Attribution-ShareAlike 4.0 International.
- Source: https://openmoji.org/
- License: https://creativecommons.org/licenses/by-sa/4.0/
- Copyright: OpenMoji project / HfG Schwaebisch Gmuend and contributors.
- Note: OpenMoji artwork remains under CC BY-SA 4.0. If you distribute images or designs containing OpenMoji artwork, the CC BY-SA 4.0 terms may apply to that artwork.

## Pillow

- Use: image loading, editing, preview rendering, dithering, and asset generation.
- License: PIL Software License / HPND-style permissive license.
- Source: https://github.com/python-pillow/Pillow
- License: https://github.com/python-pillow/Pillow/blob/main/LICENSE

## OpenCV Python Headless

- Use: CPU image processing, effects, analysis, and Ditherloom-Advanced ONNX inference through OpenCV DNN.
- License: Apache License 2.0.
- Source: https://github.com/opencv/opencv-python
- License: https://github.com/opencv/opencv-python/blob/4.x/LICENSE.txt

## NumPy

- Use: array processing used by image effects, OpenCV paths, and Ditherloom-Advanced panel-code output.
- License: BSD-3-Clause License, with bundled dependency notices.
- Source: https://numpy.org/
- License: https://numpy.org/doc/stable/license.html

## ONNX Runtime

- Use: primary CPU execution engine for Ditherloom-Advanced's project-owned ONNX gates.
- Licence: MIT License. The licence applies to ONNX Runtime, not to Ditherloom-Advanced's project-trained weights.
- Source: https://github.com/microsoft/onnxruntime
- Bundled notices: `licenses/runtime/onnxruntime-LICENSE.txt` and `licenses/runtime/onnxruntime-ThirdPartyNotices.txt`.

## SciPy

- Use: scientific image operations required by the complete v6 renderer sequence.
- Licence: BSD-3-Clause, with bundled OpenBLAS, LAPACK and compiler-runtime notices.
- Source: https://github.com/scipy/scipy
- Bundled notice: `licenses/runtime/scipy-LICENSE.txt`.

## Numba

- Use: parity-proven native-pixel diffusion acceleration in Ditherloom-Advanced.
- Licence: BSD-2-Clause, with bundled third-party notices.
- Source: https://github.com/numba/numba
- Bundled notices: `licenses/runtime/numba-LICENSE.txt` and `licenses/runtime/numba-LICENSES.third-party.txt`.

## llvmlite and LLVM

- Use: Numba JIT compiler runtime.
- Licence: BSD-2-Clause and Apache-2.0 with LLVM exception, with third-party notices.
- Source: https://github.com/numba/llvmlite
- Bundled notices: `licenses/runtime/llvmlite-LICENSE.txt` and `licenses/runtime/llvmlite-LICENSE.thirdparty.txt`.

## Renderer Runtime Support Packages

- FlatBuffers: Apache License 2.0; ONNX Runtime model serialization support. Source: https://github.com/google/flatbuffers
- Protocol Buffers: BSD-3-Clause; ONNX Runtime metadata support. Source: https://github.com/protocolbuffers/protobuf
- packaging: Apache-2.0 or BSD-2-Clause; runtime version and compatibility support. Source: https://github.com/pypa/packaging
- Their upstream terms are retained in `licenses/runtime/`.

## Bleak

- Use: Bluetooth LE scanning and GATT communication.
- License: MIT License.
- Source: https://github.com/hbldh/bleak
- License: https://github.com/hbldh/bleak/blob/develop/LICENSE

## WinRT Python Runtime

- Use: Windows Bluetooth APIs used by Bleak.
- Components: `winrt-runtime` and the Windows Bluetooth, Advertisement, Generic Attribute Profile, Enumeration, Foundation, Foundation Collections, and Storage Streams packages.
- Licence: MIT License.
- Source: https://github.com/pywinrt/pywinrt

## pySerial

- Use: USB serial communication with modified firmware and flashing helpers.
- License: BSD License.
- Source: https://github.com/pyserial/pyserial
- License: https://github.com/pyserial/pyserial/blob/master/LICENSE.txt

## esptool

- Use: ESP32-C3 backup, restore, and firmware flashing helpers.
- License: GNU General Public License v2 or later.
- Source: https://github.com/espressif/esptool
- License: https://github.com/espressif/esptool/blob/master/LICENSE

The folder also carries esptool's required Python dependencies: bitstring and tibs (MIT), bitarray (PSF-2.0), cryptography (Apache-2.0 or BSD-3-Clause), cffi (MIT), pycparser (BSD-3-Clause), ecdsa (MIT), IntelHex (BSD), PyYAML (MIT), reedsolo (public domain), and six (MIT). Their own terms continue to apply.

## ESP-IDF

- Use: custom ESP32-C3 firmware framework, including Wi-Fi, BLE, storage, and RTOS components.
- License: Apache License 2.0, with third-party component notices.
- Source: https://github.com/espressif/esp-idf
- License: https://github.com/espressif/esp-idf/blob/master/LICENSE

## Bundled Fonts

The current folder package includes 29 font families. Twenty-eight use the SIL Open Font License 1.1 and Permanent Marker uses Apache License 2.0. Exact families, copyright statements and upstream sources are recorded in `licenses/FONT_CATALOGUE.md`; the unmodified licence and metadata files remain beside each font.
