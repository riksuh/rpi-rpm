from setuptools import setup, find_packages


setup(
    name="rpi-rpm",
    version="0.2",
    packages=find_packages("src"),
    package_dir={"": "src"},
    install_requires=[
        "click",
        "werkzeug",
        "gpiozero",
        "rpi.gpio"
    ],
    entry_points={
        "console_scripts": [
            "rpi-rpm = rpi_rpm.cli:main"
        ]
    }
)
