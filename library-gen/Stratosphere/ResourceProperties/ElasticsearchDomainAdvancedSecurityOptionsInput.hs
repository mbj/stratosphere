
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html

module Stratosphere.ResourceProperties.ElasticsearchDomainAdvancedSecurityOptionsInput where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticsearchDomainMasterUserOptions

-- | Full data type definition for
-- ElasticsearchDomainAdvancedSecurityOptionsInput. See
-- 'elasticsearchDomainAdvancedSecurityOptionsInput' for a more convenient
-- constructor.
data ElasticsearchDomainAdvancedSecurityOptionsInput =
  ElasticsearchDomainAdvancedSecurityOptionsInput
  { _elasticsearchDomainAdvancedSecurityOptionsInputEnabled :: Maybe (Val Bool)
  , _elasticsearchDomainAdvancedSecurityOptionsInputInternalUserDatabaseEnabled :: Maybe (Val Bool)
  , _elasticsearchDomainAdvancedSecurityOptionsInputMasterUserOptions :: Maybe ElasticsearchDomainMasterUserOptions
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainAdvancedSecurityOptionsInput where
  toJSON ElasticsearchDomainAdvancedSecurityOptionsInput{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _elasticsearchDomainAdvancedSecurityOptionsInputEnabled
    , fmap (("InternalUserDatabaseEnabled",) . toJSON) _elasticsearchDomainAdvancedSecurityOptionsInputInternalUserDatabaseEnabled
    , fmap (("MasterUserOptions",) . toJSON) _elasticsearchDomainAdvancedSecurityOptionsInputMasterUserOptions
    ]

-- | Constructor for 'ElasticsearchDomainAdvancedSecurityOptionsInput'
-- containing required fields as arguments.
elasticsearchDomainAdvancedSecurityOptionsInput
  :: ElasticsearchDomainAdvancedSecurityOptionsInput
elasticsearchDomainAdvancedSecurityOptionsInput  =
  ElasticsearchDomainAdvancedSecurityOptionsInput
  { _elasticsearchDomainAdvancedSecurityOptionsInputEnabled = Nothing
  , _elasticsearchDomainAdvancedSecurityOptionsInputInternalUserDatabaseEnabled = Nothing
  , _elasticsearchDomainAdvancedSecurityOptionsInputMasterUserOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-enabled
edasoiEnabled :: Lens' ElasticsearchDomainAdvancedSecurityOptionsInput (Maybe (Val Bool))
edasoiEnabled = lens _elasticsearchDomainAdvancedSecurityOptionsInputEnabled (\s a -> s { _elasticsearchDomainAdvancedSecurityOptionsInputEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-internaluserdatabaseenabled
edasoiInternalUserDatabaseEnabled :: Lens' ElasticsearchDomainAdvancedSecurityOptionsInput (Maybe (Val Bool))
edasoiInternalUserDatabaseEnabled = lens _elasticsearchDomainAdvancedSecurityOptionsInputInternalUserDatabaseEnabled (\s a -> s { _elasticsearchDomainAdvancedSecurityOptionsInputInternalUserDatabaseEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-advancedsecurityoptionsinput.html#cfn-elasticsearch-domain-advancedsecurityoptionsinput-masteruseroptions
edasoiMasterUserOptions :: Lens' ElasticsearchDomainAdvancedSecurityOptionsInput (Maybe ElasticsearchDomainMasterUserOptions)
edasoiMasterUserOptions = lens _elasticsearchDomainAdvancedSecurityOptionsInputMasterUserOptions (\s a -> s { _elasticsearchDomainAdvancedSecurityOptionsInputMasterUserOptions = a })
