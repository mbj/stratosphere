{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | SsmAssociations is a property of the AWS::EC2::Instance resource that
-- specifies the Amazon EC2 Simple Systems Manager (SSM) document and
-- parameter values to associate with an instance.

module Stratosphere.ResourceProperties.EC2SsmAssociations where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SsmAssociationParameters

-- | Full data type definition for EC2SsmAssociations. See
-- 'ec2SsmAssociations' for a more convenient constructor.
data EC2SsmAssociations =
  EC2SsmAssociations
  { _eC2SsmAssociationsAssociationParameters :: Maybe [EC2SsmAssociationParameters]
  , _eC2SsmAssociationsDocumentName :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2SsmAssociations where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON EC2SsmAssociations where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'EC2SsmAssociations' containing required fields as
-- arguments.
ec2SsmAssociations
  :: Val Text -- ^ 'ecsaDocumentName'
  -> EC2SsmAssociations
ec2SsmAssociations documentNamearg =
  EC2SsmAssociations
  { _eC2SsmAssociationsAssociationParameters = Nothing
  , _eC2SsmAssociationsDocumentName = documentNamearg
  }

-- | The input parameter values to use with the associated SSM document.
ecsaAssociationParameters :: Lens' EC2SsmAssociations (Maybe [EC2SsmAssociationParameters])
ecsaAssociationParameters = lens _eC2SsmAssociationsAssociationParameters (\s a -> s { _eC2SsmAssociationsAssociationParameters = a })

-- | The name of an SSM document to associate with the instance.
ecsaDocumentName :: Lens' EC2SsmAssociations (Val Text)
ecsaDocumentName = lens _eC2SsmAssociationsDocumentName (\s a -> s { _eC2SsmAssociationsDocumentName = a })