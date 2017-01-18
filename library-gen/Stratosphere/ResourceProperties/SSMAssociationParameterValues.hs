{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html

module Stratosphere.ResourceProperties.SSMAssociationParameterValues where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SSMAssociationParameterValues. See
-- | 'ssmAssociationParameterValues' for a more convenient constructor.
data SSMAssociationParameterValues =
  SSMAssociationParameterValues
  { _sSMAssociationParameterValuesParameterValues :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON SSMAssociationParameterValues where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON SSMAssociationParameterValues where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'SSMAssociationParameterValues' containing required
-- | fields as arguments.
ssmAssociationParameterValues
  :: [Val Text] -- ^ 'ssmapvParameterValues'
  -> SSMAssociationParameterValues
ssmAssociationParameterValues parameterValuesarg =
  SSMAssociationParameterValues
  { _sSMAssociationParameterValuesParameterValues = parameterValuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues
ssmapvParameterValues :: Lens' SSMAssociationParameterValues [Val Text]
ssmapvParameterValues = lens _sSMAssociationParameterValuesParameterValues (\s a -> s { _sSMAssociationParameterValuesParameterValues = a })
