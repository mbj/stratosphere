{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html

module Stratosphere.Resources.WAFv2RegexPatternSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2RegexPatternSet. See
-- 'waFv2RegexPatternSet' for a more convenient constructor.
data WAFv2RegexPatternSet =
  WAFv2RegexPatternSet
  { _wAFv2RegexPatternSetDescription :: Maybe (Val Text)
  , _wAFv2RegexPatternSetName :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegularExpressionList :: ValList Text
  , _wAFv2RegexPatternSetScope :: Val Text
  , _wAFv2RegexPatternSetTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2RegexPatternSet where
  toResourceProperties WAFv2RegexPatternSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::RegexPatternSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _wAFv2RegexPatternSetDescription
        , fmap (("Name",) . toJSON) _wAFv2RegexPatternSetName
        , (Just . ("RegularExpressionList",) . toJSON) _wAFv2RegexPatternSetRegularExpressionList
        , (Just . ("Scope",) . toJSON) _wAFv2RegexPatternSetScope
        , fmap (("Tags",) . toJSON) _wAFv2RegexPatternSetTags
        ]
    }

-- | Constructor for 'WAFv2RegexPatternSet' containing required fields as
-- arguments.
waFv2RegexPatternSet
  :: ValList Text -- ^ 'wafrpsRegularExpressionList'
  -> Val Text -- ^ 'wafrpsScope'
  -> WAFv2RegexPatternSet
waFv2RegexPatternSet regularExpressionListarg scopearg =
  WAFv2RegexPatternSet
  { _wAFv2RegexPatternSetDescription = Nothing
  , _wAFv2RegexPatternSetName = Nothing
  , _wAFv2RegexPatternSetRegularExpressionList = regularExpressionListarg
  , _wAFv2RegexPatternSetScope = scopearg
  , _wAFv2RegexPatternSetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-description
wafrpsDescription :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsDescription = lens _wAFv2RegexPatternSetDescription (\s a -> s { _wAFv2RegexPatternSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-name
wafrpsName :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsName = lens _wAFv2RegexPatternSetName (\s a -> s { _wAFv2RegexPatternSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regularexpressionlist
wafrpsRegularExpressionList :: Lens' WAFv2RegexPatternSet (ValList Text)
wafrpsRegularExpressionList = lens _wAFv2RegexPatternSetRegularExpressionList (\s a -> s { _wAFv2RegexPatternSetRegularExpressionList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-scope
wafrpsScope :: Lens' WAFv2RegexPatternSet (Val Text)
wafrpsScope = lens _wAFv2RegexPatternSetScope (\s a -> s { _wAFv2RegexPatternSetScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-tags
wafrpsTags :: Lens' WAFv2RegexPatternSet (Maybe [Tag])
wafrpsTags = lens _wAFv2RegexPatternSetTags (\s a -> s { _wAFv2RegexPatternSetTags = a })
