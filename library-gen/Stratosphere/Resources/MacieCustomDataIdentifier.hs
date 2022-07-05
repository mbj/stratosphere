{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html

module Stratosphere.Resources.MacieCustomDataIdentifier where

import Stratosphere.ResourceImports


-- | Full data type definition for MacieCustomDataIdentifier. See
-- 'macieCustomDataIdentifier' for a more convenient constructor.
data MacieCustomDataIdentifier =
  MacieCustomDataIdentifier
  { _macieCustomDataIdentifierDescription :: Maybe (Val Text)
  , _macieCustomDataIdentifierIgnoreWords :: Maybe (ValList Text)
  , _macieCustomDataIdentifierKeywords :: Maybe (ValList Text)
  , _macieCustomDataIdentifierMaximumMatchDistance :: Maybe (Val Integer)
  , _macieCustomDataIdentifierName :: Val Text
  , _macieCustomDataIdentifierRegex :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties MacieCustomDataIdentifier where
  toResourceProperties MacieCustomDataIdentifier{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Macie::CustomDataIdentifier"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _macieCustomDataIdentifierDescription
        , fmap (("IgnoreWords",) . toJSON) _macieCustomDataIdentifierIgnoreWords
        , fmap (("Keywords",) . toJSON) _macieCustomDataIdentifierKeywords
        , fmap (("MaximumMatchDistance",) . toJSON) _macieCustomDataIdentifierMaximumMatchDistance
        , (Just . ("Name",) . toJSON) _macieCustomDataIdentifierName
        , (Just . ("Regex",) . toJSON) _macieCustomDataIdentifierRegex
        ]
    }

-- | Constructor for 'MacieCustomDataIdentifier' containing required fields as
-- arguments.
macieCustomDataIdentifier
  :: Val Text -- ^ 'mcdiName'
  -> Val Text -- ^ 'mcdiRegex'
  -> MacieCustomDataIdentifier
macieCustomDataIdentifier namearg regexarg =
  MacieCustomDataIdentifier
  { _macieCustomDataIdentifierDescription = Nothing
  , _macieCustomDataIdentifierIgnoreWords = Nothing
  , _macieCustomDataIdentifierKeywords = Nothing
  , _macieCustomDataIdentifierMaximumMatchDistance = Nothing
  , _macieCustomDataIdentifierName = namearg
  , _macieCustomDataIdentifierRegex = regexarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-description
mcdiDescription :: Lens' MacieCustomDataIdentifier (Maybe (Val Text))
mcdiDescription = lens _macieCustomDataIdentifierDescription (\s a -> s { _macieCustomDataIdentifierDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-ignorewords
mcdiIgnoreWords :: Lens' MacieCustomDataIdentifier (Maybe (ValList Text))
mcdiIgnoreWords = lens _macieCustomDataIdentifierIgnoreWords (\s a -> s { _macieCustomDataIdentifierIgnoreWords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-keywords
mcdiKeywords :: Lens' MacieCustomDataIdentifier (Maybe (ValList Text))
mcdiKeywords = lens _macieCustomDataIdentifierKeywords (\s a -> s { _macieCustomDataIdentifierKeywords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-maximummatchdistance
mcdiMaximumMatchDistance :: Lens' MacieCustomDataIdentifier (Maybe (Val Integer))
mcdiMaximumMatchDistance = lens _macieCustomDataIdentifierMaximumMatchDistance (\s a -> s { _macieCustomDataIdentifierMaximumMatchDistance = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-name
mcdiName :: Lens' MacieCustomDataIdentifier (Val Text)
mcdiName = lens _macieCustomDataIdentifierName (\s a -> s { _macieCustomDataIdentifierName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-customdataidentifier.html#cfn-macie-customdataidentifier-regex
mcdiRegex :: Lens' MacieCustomDataIdentifier (Val Text)
mcdiRegex = lens _macieCustomDataIdentifierRegex (\s a -> s { _macieCustomDataIdentifierRegex = a })
