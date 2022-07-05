{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html

module Stratosphere.Resources.SSMParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMParameter. See 'ssmParameter' for a more
-- convenient constructor.
data SSMParameter =
  SSMParameter
  { _sSMParameterAllowedPattern :: Maybe (Val Text)
  , _sSMParameterDataType :: Maybe (Val Text)
  , _sSMParameterDescription :: Maybe (Val Text)
  , _sSMParameterName :: Maybe (Val Text)
  , _sSMParameterPolicies :: Maybe (Val Text)
  , _sSMParameterTags :: Maybe Object
  , _sSMParameterTier :: Maybe (Val Text)
  , _sSMParameterType :: Val Text
  , _sSMParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SSMParameter where
  toResourceProperties SSMParameter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::Parameter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllowedPattern",) . toJSON) _sSMParameterAllowedPattern
        , fmap (("DataType",) . toJSON) _sSMParameterDataType
        , fmap (("Description",) . toJSON) _sSMParameterDescription
        , fmap (("Name",) . toJSON) _sSMParameterName
        , fmap (("Policies",) . toJSON) _sSMParameterPolicies
        , fmap (("Tags",) . toJSON) _sSMParameterTags
        , fmap (("Tier",) . toJSON) _sSMParameterTier
        , (Just . ("Type",) . toJSON) _sSMParameterType
        , (Just . ("Value",) . toJSON) _sSMParameterValue
        ]
    }

-- | Constructor for 'SSMParameter' containing required fields as arguments.
ssmParameter
  :: Val Text -- ^ 'ssmpType'
  -> Val Text -- ^ 'ssmpValue'
  -> SSMParameter
ssmParameter typearg valuearg =
  SSMParameter
  { _sSMParameterAllowedPattern = Nothing
  , _sSMParameterDataType = Nothing
  , _sSMParameterDescription = Nothing
  , _sSMParameterName = Nothing
  , _sSMParameterPolicies = Nothing
  , _sSMParameterTags = Nothing
  , _sSMParameterTier = Nothing
  , _sSMParameterType = typearg
  , _sSMParameterValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-allowedpattern
ssmpAllowedPattern :: Lens' SSMParameter (Maybe (Val Text))
ssmpAllowedPattern = lens _sSMParameterAllowedPattern (\s a -> s { _sSMParameterAllowedPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-datatype
ssmpDataType :: Lens' SSMParameter (Maybe (Val Text))
ssmpDataType = lens _sSMParameterDataType (\s a -> s { _sSMParameterDataType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-description
ssmpDescription :: Lens' SSMParameter (Maybe (Val Text))
ssmpDescription = lens _sSMParameterDescription (\s a -> s { _sSMParameterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-name
ssmpName :: Lens' SSMParameter (Maybe (Val Text))
ssmpName = lens _sSMParameterName (\s a -> s { _sSMParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-policies
ssmpPolicies :: Lens' SSMParameter (Maybe (Val Text))
ssmpPolicies = lens _sSMParameterPolicies (\s a -> s { _sSMParameterPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tags
ssmpTags :: Lens' SSMParameter (Maybe Object)
ssmpTags = lens _sSMParameterTags (\s a -> s { _sSMParameterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tier
ssmpTier :: Lens' SSMParameter (Maybe (Val Text))
ssmpTier = lens _sSMParameterTier (\s a -> s { _sSMParameterTier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-type
ssmpType :: Lens' SSMParameter (Val Text)
ssmpType = lens _sSMParameterType (\s a -> s { _sSMParameterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-value
ssmpValue :: Lens' SSMParameter (Val Text)
ssmpValue = lens _sSMParameterValue (\s a -> s { _sSMParameterValue = a })
