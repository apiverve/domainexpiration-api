from setuptools import setup, find_packages

setup(
    name='apiverve_domainexpiration',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Domain Expiration tracks domain expiration health and domain age for any web address. It returns days remaining until expiry, an expiration status, and age in days and years, with paid plans adding exact registration timestamps.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/domainexpiration?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
