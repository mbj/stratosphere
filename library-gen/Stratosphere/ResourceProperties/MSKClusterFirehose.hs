
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html

module Stratosphere.ResourceProperties.MSKClusterFirehose where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterFirehose. See
-- 'mskClusterFirehose' for a more convenient constructor.
data MSKClusterFirehose =
  MSKClusterFirehose
  { _mSKClusterFirehoseDeliveryStream :: Maybe (Val Text)
  , _mSKClusterFirehoseEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON MSKClusterFirehose where
  toJSON MSKClusterFirehose{..} =
    object $
    catMaybes
    [ fmap (("DeliveryStream",) . toJSON) _mSKClusterFirehoseDeliveryStream
    , (Just . ("Enabled",) . toJSON) _mSKClusterFirehoseEnabled
    ]

-- | Constructor for 'MSKClusterFirehose' containing required fields as
-- arguments.
mskClusterFirehose
  :: Val Bool -- ^ 'mskcfEnabled'
  -> MSKClusterFirehose
mskClusterFirehose enabledarg =
  MSKClusterFirehose
  { _mSKClusterFirehoseDeliveryStream = Nothing
  , _mSKClusterFirehoseEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html#cfn-msk-cluster-firehose-deliverystream
mskcfDeliveryStream :: Lens' MSKClusterFirehose (Maybe (Val Text))
mskcfDeliveryStream = lens _mSKClusterFirehoseDeliveryStream (\s a -> s { _mSKClusterFirehoseDeliveryStream = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html#cfn-msk-cluster-firehose-enabled
mskcfEnabled :: Lens' MSKClusterFirehose (Val Bool)
mskcfEnabled = lens _mSKClusterFirehoseEnabled (\s a -> s { _mSKClusterFirehoseEnabled = a })
