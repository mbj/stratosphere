{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html

module Stratosphere.ResourceProperties.AccessAnalyzerAnalyzerFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for AccessAnalyzerAnalyzerFilter. See
-- 'accessAnalyzerAnalyzerFilter' for a more convenient constructor.
data AccessAnalyzerAnalyzerFilter =
  AccessAnalyzerAnalyzerFilter
  { _accessAnalyzerAnalyzerFilterContains :: Maybe (ValList Text)
  , _accessAnalyzerAnalyzerFilterEq :: Maybe (ValList Text)
  , _accessAnalyzerAnalyzerFilterExists :: Maybe (Val Bool)
  , _accessAnalyzerAnalyzerFilterNeq :: Maybe (ValList Text)
  , _accessAnalyzerAnalyzerFilterProperty :: Val Text
  } deriving (Show, Eq)

instance ToJSON AccessAnalyzerAnalyzerFilter where
  toJSON AccessAnalyzerAnalyzerFilter{..} =
    object $
    catMaybes
    [ fmap (("Contains",) . toJSON) _accessAnalyzerAnalyzerFilterContains
    , fmap (("Eq",) . toJSON) _accessAnalyzerAnalyzerFilterEq
    , fmap (("Exists",) . toJSON) _accessAnalyzerAnalyzerFilterExists
    , fmap (("Neq",) . toJSON) _accessAnalyzerAnalyzerFilterNeq
    , (Just . ("Property",) . toJSON) _accessAnalyzerAnalyzerFilterProperty
    ]

-- | Constructor for 'AccessAnalyzerAnalyzerFilter' containing required fields
-- as arguments.
accessAnalyzerAnalyzerFilter
  :: Val Text -- ^ 'aaafProperty'
  -> AccessAnalyzerAnalyzerFilter
accessAnalyzerAnalyzerFilter propertyarg =
  AccessAnalyzerAnalyzerFilter
  { _accessAnalyzerAnalyzerFilterContains = Nothing
  , _accessAnalyzerAnalyzerFilterEq = Nothing
  , _accessAnalyzerAnalyzerFilterExists = Nothing
  , _accessAnalyzerAnalyzerFilterNeq = Nothing
  , _accessAnalyzerAnalyzerFilterProperty = propertyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-contains
aaafContains :: Lens' AccessAnalyzerAnalyzerFilter (Maybe (ValList Text))
aaafContains = lens _accessAnalyzerAnalyzerFilterContains (\s a -> s { _accessAnalyzerAnalyzerFilterContains = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-eq
aaafEq :: Lens' AccessAnalyzerAnalyzerFilter (Maybe (ValList Text))
aaafEq = lens _accessAnalyzerAnalyzerFilterEq (\s a -> s { _accessAnalyzerAnalyzerFilterEq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-exists
aaafExists :: Lens' AccessAnalyzerAnalyzerFilter (Maybe (Val Bool))
aaafExists = lens _accessAnalyzerAnalyzerFilterExists (\s a -> s { _accessAnalyzerAnalyzerFilterExists = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-neq
aaafNeq :: Lens' AccessAnalyzerAnalyzerFilter (Maybe (ValList Text))
aaafNeq = lens _accessAnalyzerAnalyzerFilterNeq (\s a -> s { _accessAnalyzerAnalyzerFilterNeq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-filter.html#cfn-accessanalyzer-analyzer-filter-property
aaafProperty :: Lens' AccessAnalyzerAnalyzerFilter (Val Text)
aaafProperty = lens _accessAnalyzerAnalyzerFilterProperty (\s a -> s { _accessAnalyzerAnalyzerFilterProperty = a })
