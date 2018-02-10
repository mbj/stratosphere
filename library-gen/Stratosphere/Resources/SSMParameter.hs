{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html

module Stratosphere.Resources.SSMParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMParameter. See 'ssmParameter' for a more
-- convenient constructor.
data SSMParameter =
  SSMParameter
  { _sSMParameterAllowedPattern :: Maybe (Val Text)
  , _sSMParameterDescription :: Maybe (Val Text)
  , _sSMParameterName :: Maybe (Val Text)
  , _sSMParameterType :: Val Text
  , _sSMParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON SSMParameter where
  toJSON SSMParameter{..} =
    object $
    catMaybes
    [ fmap (("AllowedPattern",) . toJSON) _sSMParameterAllowedPattern
    , fmap (("Description",) . toJSON) _sSMParameterDescription
    , fmap (("Name",) . toJSON) _sSMParameterName
    , (Just . ("Type",) . toJSON) _sSMParameterType
    , (Just . ("Value",) . toJSON) _sSMParameterValue
    ]

instance FromJSON SSMParameter where
  parseJSON (Object obj) =
    SSMParameter <$>
      (obj .:? "AllowedPattern") <*>
      (obj .:? "Description") <*>
      (obj .:? "Name") <*>
      (obj .: "Type") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'SSMParameter' containing required fields as arguments.
ssmParameter
  :: Val Text -- ^ 'ssmpType'
  -> Val Text -- ^ 'ssmpValue'
  -> SSMParameter
ssmParameter typearg valuearg =
  SSMParameter
  { _sSMParameterAllowedPattern = Nothing
  , _sSMParameterDescription = Nothing
  , _sSMParameterName = Nothing
  , _sSMParameterType = typearg
  , _sSMParameterValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-allowedpattern
ssmpAllowedPattern :: Lens' SSMParameter (Maybe (Val Text))
ssmpAllowedPattern = lens _sSMParameterAllowedPattern (\s a -> s { _sSMParameterAllowedPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-description
ssmpDescription :: Lens' SSMParameter (Maybe (Val Text))
ssmpDescription = lens _sSMParameterDescription (\s a -> s { _sSMParameterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-name
ssmpName :: Lens' SSMParameter (Maybe (Val Text))
ssmpName = lens _sSMParameterName (\s a -> s { _sSMParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-type
ssmpType :: Lens' SSMParameter (Val Text)
ssmpType = lens _sSMParameterType (\s a -> s { _sSMParameterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-value
ssmpValue :: Lens' SSMParameter (Val Text)
ssmpValue = lens _sSMParameterValue (\s a -> s { _sSMParameterValue = a })
