{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html

module Stratosphere.Resources.SDBDomain where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SDBDomain. See 'sdbDomain' for a more
-- | convenient constructor.
data SDBDomain =
  SDBDomain
  { _sDBDomainDescription :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON SDBDomain where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON SDBDomain where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'SDBDomain' containing required fields as arguments.
sdbDomain
  :: SDBDomain
sdbDomain  =
  SDBDomain
  { _sDBDomainDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description
sdbdDescription :: Lens' SDBDomain (Maybe (Val Text))
sdbdDescription = lens _sDBDomainDescription (\s a -> s { _sDBDomainDescription = a })
