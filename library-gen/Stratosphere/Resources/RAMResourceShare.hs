{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html

module Stratosphere.Resources.RAMResourceShare where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RAMResourceShare. See 'ramResourceShare'
-- for a more convenient constructor.
data RAMResourceShare =
  RAMResourceShare
  { _rAMResourceShareAllowExternalPrincipals :: Maybe (Val Bool)
  , _rAMResourceShareName :: Val Text
  , _rAMResourceSharePrincipals :: Maybe (ValList Text)
  , _rAMResourceShareResourceArns :: Maybe (ValList Text)
  , _rAMResourceShareTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON RAMResourceShare where
  toJSON RAMResourceShare{..} =
    object $
    catMaybes
    [ fmap (("AllowExternalPrincipals",) . toJSON . fmap Bool') _rAMResourceShareAllowExternalPrincipals
    , (Just . ("Name",) . toJSON) _rAMResourceShareName
    , fmap (("Principals",) . toJSON) _rAMResourceSharePrincipals
    , fmap (("ResourceArns",) . toJSON) _rAMResourceShareResourceArns
    , fmap (("Tags",) . toJSON) _rAMResourceShareTags
    ]

instance FromJSON RAMResourceShare where
  parseJSON (Object obj) =
    RAMResourceShare <$>
      fmap (fmap (fmap unBool')) (obj .:? "AllowExternalPrincipals") <*>
      (obj .: "Name") <*>
      (obj .:? "Principals") <*>
      (obj .:? "ResourceArns") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'RAMResourceShare' containing required fields as
-- arguments.
ramResourceShare
  :: Val Text -- ^ 'ramrsName'
  -> RAMResourceShare
ramResourceShare namearg =
  RAMResourceShare
  { _rAMResourceShareAllowExternalPrincipals = Nothing
  , _rAMResourceShareName = namearg
  , _rAMResourceSharePrincipals = Nothing
  , _rAMResourceShareResourceArns = Nothing
  , _rAMResourceShareTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-allowexternalprincipals
ramrsAllowExternalPrincipals :: Lens' RAMResourceShare (Maybe (Val Bool))
ramrsAllowExternalPrincipals = lens _rAMResourceShareAllowExternalPrincipals (\s a -> s { _rAMResourceShareAllowExternalPrincipals = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-name
ramrsName :: Lens' RAMResourceShare (Val Text)
ramrsName = lens _rAMResourceShareName (\s a -> s { _rAMResourceShareName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-principals
ramrsPrincipals :: Lens' RAMResourceShare (Maybe (ValList Text))
ramrsPrincipals = lens _rAMResourceSharePrincipals (\s a -> s { _rAMResourceSharePrincipals = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-resourcearns
ramrsResourceArns :: Lens' RAMResourceShare (Maybe (ValList Text))
ramrsResourceArns = lens _rAMResourceShareResourceArns (\s a -> s { _rAMResourceShareResourceArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-tags
ramrsTags :: Lens' RAMResourceShare (Maybe [Tag])
ramrsTags = lens _rAMResourceShareTags (\s a -> s { _rAMResourceShareTags = a })
