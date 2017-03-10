{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html

module Stratosphere.ResourceProperties.SSMAssociationParameterValues where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SSMAssociationParameterValues. See
-- 'ssmAssociationParameterValues' for a more convenient constructor.
data SSMAssociationParameterValues =
  SSMAssociationParameterValues
  { _sSMAssociationParameterValuesParameterValues :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON SSMAssociationParameterValues where
  toJSON SSMAssociationParameterValues{..} =
    object $
    catMaybes
    [ Just ("ParameterValues" .= _sSMAssociationParameterValuesParameterValues)
    ]

instance FromJSON SSMAssociationParameterValues where
  parseJSON (Object obj) =
    SSMAssociationParameterValues <$>
      obj .: "ParameterValues"
  parseJSON _ = mempty

-- | Constructor for 'SSMAssociationParameterValues' containing required
-- fields as arguments.
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
