{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html

module Stratosphere.ResourceProperties.MSKClusterSasl where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterScram

-- | Full data type definition for MSKClusterSasl. See 'mskClusterSasl' for a
-- more convenient constructor.
data MSKClusterSasl =
  MSKClusterSasl
  { _mSKClusterSaslScram :: MSKClusterScram
  } deriving (Show, Eq)

instance ToJSON MSKClusterSasl where
  toJSON MSKClusterSasl{..} =
    object $
    catMaybes
    [ (Just . ("Scram",) . toJSON) _mSKClusterSaslScram
    ]

-- | Constructor for 'MSKClusterSasl' containing required fields as arguments.
mskClusterSasl
  :: MSKClusterScram -- ^ 'mskcsScram'
  -> MSKClusterSasl
mskClusterSasl scramarg =
  MSKClusterSasl
  { _mSKClusterSaslScram = scramarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html#cfn-msk-cluster-sasl-scram
mskcsScram :: Lens' MSKClusterSasl MSKClusterScram
mskcsScram = lens _mSKClusterSaslScram (\s a -> s { _mSKClusterSaslScram = a })
