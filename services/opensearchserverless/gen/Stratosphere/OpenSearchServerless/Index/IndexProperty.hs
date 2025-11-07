module Stratosphere.OpenSearchServerless.Index.IndexProperty (
        IndexProperty(..), mkIndexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IndexProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-index.html>
    IndexProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-index.html#cfn-opensearchserverless-index-index-knn>
                   knn :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-index.html#cfn-opensearchserverless-index-index-knnalgoparamefsearch>
                   knnAlgoParamEfSearch :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-index.html#cfn-opensearchserverless-index-index-refreshinterval>
                   refreshInterval :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexProperty :: IndexProperty
mkIndexProperty
  = IndexProperty
      {haddock_workaround_ = (), knn = Prelude.Nothing,
       knnAlgoParamEfSearch = Prelude.Nothing,
       refreshInterval = Prelude.Nothing}
instance ToResourceProperties IndexProperty where
  toResourceProperties IndexProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.Index",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Knn" Prelude.<$> knn,
                            (JSON..=) "KnnAlgoParamEfSearch" Prelude.<$> knnAlgoParamEfSearch,
                            (JSON..=) "RefreshInterval" Prelude.<$> refreshInterval])}
instance JSON.ToJSON IndexProperty where
  toJSON IndexProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Knn" Prelude.<$> knn,
               (JSON..=) "KnnAlgoParamEfSearch" Prelude.<$> knnAlgoParamEfSearch,
               (JSON..=) "RefreshInterval" Prelude.<$> refreshInterval]))
instance Property "Knn" IndexProperty where
  type PropertyType "Knn" IndexProperty = Value Prelude.Bool
  set newValue IndexProperty {..}
    = IndexProperty {knn = Prelude.pure newValue, ..}
instance Property "KnnAlgoParamEfSearch" IndexProperty where
  type PropertyType "KnnAlgoParamEfSearch" IndexProperty = Value Prelude.Integer
  set newValue IndexProperty {..}
    = IndexProperty {knnAlgoParamEfSearch = Prelude.pure newValue, ..}
instance Property "RefreshInterval" IndexProperty where
  type PropertyType "RefreshInterval" IndexProperty = Value Prelude.Text
  set newValue IndexProperty {..}
    = IndexProperty {refreshInterval = Prelude.pure newValue, ..}