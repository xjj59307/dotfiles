# -*- coding: utf-8 -*-

from subprocess import check_output
from subprocess import call

class Py3status:

    def bitflyer(self):
        get_price = lambda product_code: check_output(['bash', '-c', "curl -s 'https://api.bitflyer.jp/v1/board?product_code={}' | jq .mid_price".format(product_code)]).decode('utf-8')[:-1]

        return {
            'full_text': '{} {} {}'.format(get_price('BTC_JPY'), get_price('ETH_BTC'), get_price('BCH_BTC')),
            'cache_timeout': 60
        }

if __name__ == "__main__":
    """
    Run module in test mode.
    """
    from py3status.module_test import module_test
    module_test(Py3status)
