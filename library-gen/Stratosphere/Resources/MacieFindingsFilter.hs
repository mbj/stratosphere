{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html

module Stratosphere.Resources.MacieFindingsFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for MacieFindingsFilter. See
-- 'macieFindingsFilter' for a more convenient constructor.
data MacieFindingsFilter =
  MacieFindingsFilter
  { _macieFindingsFilterAction :: Maybe (Val Text)
  , _macieFindingsFilterDescription :: Maybe (Val Text)
  , _macieFindingsFilterName :: Val Text
  , _macieFindingsFilterPosition :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties MacieFindingsFilter where
  toResourceProperties MacieFindingsFilter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Macie::FindingsFilter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Action",) . toJSON) _macieFindingsFilterAction
        , fmap (("Description",) . toJSON) _macieFindingsFilterDescription
        , (Just . ("Name",) . toJSON) _macieFindingsFilterName
        , fmap (("Position",) . toJSON) _macieFindingsFilterPosition
        ]
    }

-- | Constructor for 'MacieFindingsFilter' containing required fields as
-- arguments.
macieFindingsFilter
  :: Val Text -- ^ 'mffName'
  -> MacieFindingsFilter
macieFindingsFilter namearg =
  MacieFindingsFilter
  { _macieFindingsFilterAction = Nothing
  , _macieFindingsFilterDescription = Nothing
  , _macieFindingsFilterName = namearg
  , _macieFindingsFilterPosition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-action
mffAction :: Lens' MacieFindingsFilter (Maybe (Val Text))
mffAction = lens _macieFindingsFilterAction (\s a -> s { _macieFindingsFilterAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-description
mffDescription :: Lens' MacieFindingsFilter (Maybe (Val Text))
mffDescription = lens _macieFindingsFilterDescription (\s a -> s { _macieFindingsFilterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-name
mffName :: Lens' MacieFindingsFilter (Val Text)
mffName = lens _macieFindingsFilterName (\s a -> s { _macieFindingsFilterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-position
mffPosition :: Lens' MacieFindingsFilter (Maybe (Val Integer))
mffPosition = lens _macieFindingsFilterPosition (\s a -> s { _macieFindingsFilterPosition = a })
