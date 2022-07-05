{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html

module Stratosphere.Resources.AccessAnalyzerAnalyzer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AccessAnalyzerAnalyzerArchiveRule
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AccessAnalyzerAnalyzer. See
-- 'accessAnalyzerAnalyzer' for a more convenient constructor.
data AccessAnalyzerAnalyzer =
  AccessAnalyzerAnalyzer
  { _accessAnalyzerAnalyzerAnalyzerName :: Maybe (Val Text)
  , _accessAnalyzerAnalyzerArchiveRules :: Maybe [AccessAnalyzerAnalyzerArchiveRule]
  , _accessAnalyzerAnalyzerTags :: Maybe [Tag]
  , _accessAnalyzerAnalyzerType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AccessAnalyzerAnalyzer where
  toResourceProperties AccessAnalyzerAnalyzer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AccessAnalyzer::Analyzer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AnalyzerName",) . toJSON) _accessAnalyzerAnalyzerAnalyzerName
        , fmap (("ArchiveRules",) . toJSON) _accessAnalyzerAnalyzerArchiveRules
        , fmap (("Tags",) . toJSON) _accessAnalyzerAnalyzerTags
        , (Just . ("Type",) . toJSON) _accessAnalyzerAnalyzerType
        ]
    }

-- | Constructor for 'AccessAnalyzerAnalyzer' containing required fields as
-- arguments.
accessAnalyzerAnalyzer
  :: Val Text -- ^ 'aaaType'
  -> AccessAnalyzerAnalyzer
accessAnalyzerAnalyzer typearg =
  AccessAnalyzerAnalyzer
  { _accessAnalyzerAnalyzerAnalyzerName = Nothing
  , _accessAnalyzerAnalyzerArchiveRules = Nothing
  , _accessAnalyzerAnalyzerTags = Nothing
  , _accessAnalyzerAnalyzerType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-analyzername
aaaAnalyzerName :: Lens' AccessAnalyzerAnalyzer (Maybe (Val Text))
aaaAnalyzerName = lens _accessAnalyzerAnalyzerAnalyzerName (\s a -> s { _accessAnalyzerAnalyzerAnalyzerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-archiverules
aaaArchiveRules :: Lens' AccessAnalyzerAnalyzer (Maybe [AccessAnalyzerAnalyzerArchiveRule])
aaaArchiveRules = lens _accessAnalyzerAnalyzerArchiveRules (\s a -> s { _accessAnalyzerAnalyzerArchiveRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-tags
aaaTags :: Lens' AccessAnalyzerAnalyzer (Maybe [Tag])
aaaTags = lens _accessAnalyzerAnalyzerTags (\s a -> s { _accessAnalyzerAnalyzerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-type
aaaType :: Lens' AccessAnalyzerAnalyzer (Val Text)
aaaType = lens _accessAnalyzerAnalyzerType (\s a -> s { _accessAnalyzerAnalyzerType = a })
