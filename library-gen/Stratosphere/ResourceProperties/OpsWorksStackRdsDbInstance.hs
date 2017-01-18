{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html

module Stratosphere.ResourceProperties.OpsWorksStackRdsDbInstance where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksStackRdsDbInstance. See
-- | 'opsWorksStackRdsDbInstance' for a more convenient constructor.
data OpsWorksStackRdsDbInstance =
  OpsWorksStackRdsDbInstance
  { _opsWorksStackRdsDbInstanceDbPassword :: Val Text
  , _opsWorksStackRdsDbInstanceDbUser :: Val Text
  , _opsWorksStackRdsDbInstanceRdsDbInstanceArn :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON OpsWorksStackRdsDbInstance where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON OpsWorksStackRdsDbInstance where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'OpsWorksStackRdsDbInstance' containing required fields
-- | as arguments.
opsWorksStackRdsDbInstance
  :: Val Text -- ^ 'owsrdiDbPassword'
  -> Val Text -- ^ 'owsrdiDbUser'
  -> Val Text -- ^ 'owsrdiRdsDbInstanceArn'
  -> OpsWorksStackRdsDbInstance
opsWorksStackRdsDbInstance dbPasswordarg dbUserarg rdsDbInstanceArnarg =
  OpsWorksStackRdsDbInstance
  { _opsWorksStackRdsDbInstanceDbPassword = dbPasswordarg
  , _opsWorksStackRdsDbInstanceDbUser = dbUserarg
  , _opsWorksStackRdsDbInstanceRdsDbInstanceArn = rdsDbInstanceArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbpassword
owsrdiDbPassword :: Lens' OpsWorksStackRdsDbInstance (Val Text)
owsrdiDbPassword = lens _opsWorksStackRdsDbInstanceDbPassword (\s a -> s { _opsWorksStackRdsDbInstanceDbPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-dbuser
owsrdiDbUser :: Lens' OpsWorksStackRdsDbInstance (Val Text)
owsrdiDbUser = lens _opsWorksStackRdsDbInstanceDbUser (\s a -> s { _opsWorksStackRdsDbInstanceDbUser = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-rdsdbinstance.html#cfn-opsworks-stack-rdsdbinstance-rdsdbinstancearn
owsrdiRdsDbInstanceArn :: Lens' OpsWorksStackRdsDbInstance (Val Text)
owsrdiRdsDbInstanceArn = lens _opsWorksStackRdsDbInstanceRdsDbInstanceArn (\s a -> s { _opsWorksStackRdsDbInstanceRdsDbInstanceArn = a })
