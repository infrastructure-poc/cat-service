from setuptools import setup

setup(
    name='cat_service',
    version='1.0.0',
    packages=['cat_service'],
    include_package_data=True,
    install_requires=[
        'flask',
    ],
    setup_requires=[
        'pytest-runner',
    ],
    tests_require=[
        'pytest',
    ],
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'Programming Language :: Python :: 3.4',
    ],
    python_requires='>=3.6'
)