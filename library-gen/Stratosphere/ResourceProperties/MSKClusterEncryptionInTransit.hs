
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html

module Stratosphere.ResourceProperties.MSKClusterEncryptionInTransit where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterEncryptionInTransit. See
-- 'mskClusterEncryptionInTransit' for a more convenient constructor.
data MSKClusterEncryptionInTransit =
  MSKClusterEncryptionInTransit
  { _mSKClusterEncryptionInTransitClientBroker :: Maybe (Val Text)
  , _mSKClusterEncryptionInTransitInCluster :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON MSKClusterEncryptionInTransit where
  toJSON MSKClusterEncryptionInTransit{..} =
    object $
    catMaybes
    [ fmap (("ClientBroker",) . toJSON) _mSKClusterEncryptionInTransitClientBroker
    , fmap (("InCluster",) . toJSON) _mSKClusterEncryptionInTransitInCluster
    ]

-- | Constructor for 'MSKClusterEncryptionInTransit' containing required
-- fields as arguments.
mskClusterEncryptionInTransit
  :: MSKClusterEncryptionInTransit
mskClusterEncryptionInTransit  =
  MSKClusterEncryptionInTransit
  { _mSKClusterEncryptionInTransitClientBroker = Nothing
  , _mSKClusterEncryptionInTransitInCluster = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-clientbroker
mskceitClientBroker :: Lens' MSKClusterEncryptionInTransit (Maybe (Val Text))
mskceitClientBroker = lens _mSKClusterEncryptionInTransitClientBroker (\s a -> s { _mSKClusterEncryptionInTransitClientBroker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-incluster
mskceitInCluster :: Lens' MSKClusterEncryptionInTransit (Maybe (Val Bool))
mskceitInCluster = lens _mSKClusterEncryptionInTransitInCluster (\s a -> s { _mSKClusterEncryptionInTransitInCluster = a })
