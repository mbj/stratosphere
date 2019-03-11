{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html

module Stratosphere.ResourceProperties.SSMAssociationParameterValues where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMAssociationParameterValues. See
-- 'ssmAssociationParameterValues' for a more convenient constructor.
data SSMAssociationParameterValues =
  SSMAssociationParameterValues
  { _sSMAssociationParameterValuesParameterValues :: ValList Text
  } deriving (Show, Eq)

instance ToJSON SSMAssociationParameterValues where
  toJSON SSMAssociationParameterValues{..} =
    object $
    catMaybes
    [ (Just . ("ParameterValues",) . toJSON) _sSMAssociationParameterValuesParameterValues
    ]

-- | Constructor for 'SSMAssociationParameterValues' containing required
-- fields as arguments.
ssmAssociationParameterValues
  :: ValList Text -- ^ 'ssmapvParameterValues'
  -> SSMAssociationParameterValues
ssmAssociationParameterValues parameterValuesarg =
  SSMAssociationParameterValues
  { _sSMAssociationParameterValuesParameterValues = parameterValuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues
ssmapvParameterValues :: Lens' SSMAssociationParameterValues (ValList Text)
ssmapvParameterValues = lens _sSMAssociationParameterValuesParameterValues (\s a -> s { _sSMAssociationParameterValuesParameterValues = a })
