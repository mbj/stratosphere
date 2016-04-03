{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a custom parameter group for an RDS database family. For more
-- information about RDS parameter groups, see Working with DB Parameter
-- Groups in the Amazon Relational Database Service User Guide. This type can
-- be declared in a template and referenced in the DBParameterGroupName
-- parameter of AWS::RDS::DBInstance.

module Stratosphere.Resources.DBParameterGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

data DBParameterGroup =
  DBParameterGroup
  { _dBParameterGroupDescription :: Val Text
  , _dBParameterGroupFamily :: Val Text
  , _dBParameterGroupParameters :: Maybe (Val Value)
  , _dBParameterGroupTags :: Maybe [Val ResourceTag]
  } deriving (Show, Generic)

instance ToJSON DBParameterGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON DBParameterGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

dbParameterGroup
  :: Val Text -- ^ Description
  -> Val Text -- ^ Family
  -> DBParameterGroup
dbParameterGroup descriptionarg familyarg =
  DBParameterGroup
  { _dBParameterGroupDescription = descriptionarg
  , _dBParameterGroupFamily = familyarg
  , _dBParameterGroupParameters = Nothing
  , _dBParameterGroupTags = Nothing
  }

-- | A friendly description of the RDS parameter group. For example, "My
-- Parameter Group".
dbpgDescription :: Lens' DBParameterGroup (Val Text)
dbpgDescription = lens _dBParameterGroupDescription (\s a -> s { _dBParameterGroupDescription = a })

-- | The database family of this RDS parameter group. For example, "MySQL5.1".
dbpgFamily :: Lens' DBParameterGroup (Val Text)
dbpgFamily = lens _dBParameterGroupFamily (\s a -> s { _dBParameterGroupFamily = a })

-- | The parameters to set for this RDS parameter group. Changes to dynamic
-- parameters are applied immediately. Changes to static parameters require a
-- reboot without failover to the DB instance that is associated with the
-- parameter group before the change can take effect.
dbpgParameters :: Lens' DBParameterGroup (Maybe (Val Value))
dbpgParameters = lens _dBParameterGroupParameters (\s a -> s { _dBParameterGroupParameters = a })

-- | The tags that you want to attach to the RDS parameter group.
dbpgTags :: Lens' DBParameterGroup (Maybe [Val ResourceTag])
dbpgTags = lens _dBParameterGroupTags (\s a -> s { _dBParameterGroupTags = a })