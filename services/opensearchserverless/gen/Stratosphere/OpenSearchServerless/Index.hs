module Stratosphere.OpenSearchServerless.Index (
        module Exports, Index(..), mkIndex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.IndexSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.MappingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Index
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-index.html>
    Index {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-index.html#cfn-opensearchserverless-index-collectionendpoint>
           collectionEndpoint :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-index.html#cfn-opensearchserverless-index-indexname>
           indexName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-index.html#cfn-opensearchserverless-index-mappings>
           mappings :: (Prelude.Maybe MappingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchserverless-index.html#cfn-opensearchserverless-index-settings>
           settings :: (Prelude.Maybe IndexSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndex :: Value Prelude.Text -> Value Prelude.Text -> Index
mkIndex collectionEndpoint indexName
  = Index
      {haddock_workaround_ = (), collectionEndpoint = collectionEndpoint,
       indexName = indexName, mappings = Prelude.Nothing,
       settings = Prelude.Nothing}
instance ToResourceProperties Index where
  toResourceProperties Index {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollectionEndpoint" JSON..= collectionEndpoint,
                            "IndexName" JSON..= indexName]
                           (Prelude.catMaybes
                              [(JSON..=) "Mappings" Prelude.<$> mappings,
                               (JSON..=) "Settings" Prelude.<$> settings]))}
instance JSON.ToJSON Index where
  toJSON Index {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollectionEndpoint" JSON..= collectionEndpoint,
               "IndexName" JSON..= indexName]
              (Prelude.catMaybes
                 [(JSON..=) "Mappings" Prelude.<$> mappings,
                  (JSON..=) "Settings" Prelude.<$> settings])))
instance Property "CollectionEndpoint" Index where
  type PropertyType "CollectionEndpoint" Index = Value Prelude.Text
  set newValue Index {..} = Index {collectionEndpoint = newValue, ..}
instance Property "IndexName" Index where
  type PropertyType "IndexName" Index = Value Prelude.Text
  set newValue Index {..} = Index {indexName = newValue, ..}
instance Property "Mappings" Index where
  type PropertyType "Mappings" Index = MappingsProperty
  set newValue Index {..}
    = Index {mappings = Prelude.pure newValue, ..}
instance Property "Settings" Index where
  type PropertyType "Settings" Index = IndexSettingsProperty
  set newValue Index {..}
    = Index {settings = Prelude.pure newValue, ..}