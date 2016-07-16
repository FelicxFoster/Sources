import logging
import os


logging_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'logs')

logging.basicConfig(
	level = logging.DEBUG,
	format = '%(asctime)s : %(levelname)s : %(message)s ',
	filename = logging_file,
	filemode = 'w',
)

logging.debug('Start of the programming')
logging.info('Doing something')
logging.warning('Dying now')