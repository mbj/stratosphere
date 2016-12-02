{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html

module Stratosphere.ResourceProperties.EC2InstanceSsmAssociation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2InstanceAssociationParameter

-- | Full data type definition for EC2InstanceSsmAssociation. See
-- | 'ec2InstanceSsmAssociation' for a more convenient constructor.
data EC2InstanceSsmAssociation =
  EC2InstanceSsmAssociation
  { _eC2InstanceSsmAssociationAssociationParameters :: Maybe [EC2InstanceAssociationParameter]
  , _eC2InstanceSsmAssociationDocumentName :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2InstanceSsmAssociation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON EC2InstanceSsmAssociation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'EC2InstanceSsmAssociation' containing required fields as
-- | arguments.
ec2InstanceSsmAssociation
  :: Val Text -- ^ 'ecisaDocumentName'
  -> EC2InstanceSsmAssociation
ec2InstanceSsmAssociation documentNamearg =
  EC2InstanceSsmAssociation
  { _eC2InstanceSsmAssociationAssociationParameters = Nothing
  , _eC2InstanceSsmAssociationDocumentName = documentNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-associationparameters
ecisaAssociationParameters :: Lens' EC2InstanceSsmAssociation (Maybe [EC2InstanceAssociationParameter])
ecisaAssociationParameters = lens _eC2InstanceSsmAssociationAssociationParameters (\s a -> s { _eC2InstanceSsmAssociationAssociationParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-documentname
ecisaDocumentName :: Lens' EC2InstanceSsmAssociation (Val Text)
ecisaDocumentName = lens _eC2InstanceSsmAssociationDocumentName (\s a -> s { _eC2InstanceSsmAssociationDocumentName = a })
