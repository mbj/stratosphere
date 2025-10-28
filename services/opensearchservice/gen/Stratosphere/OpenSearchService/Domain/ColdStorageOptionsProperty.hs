module Stratosphere.OpenSearchService.Domain.ColdStorageOptionsProperty (
        ColdStorageOptionsProperty(..), mkColdStorageOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColdStorageOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-coldstorageoptions.html>
    ColdStorageOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-coldstorageoptions.html#cfn-opensearchservice-domain-coldstorageoptions-enabled>
                                enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColdStorageOptionsProperty :: ColdStorageOptionsProperty
mkColdStorageOptionsProperty
  = ColdStorageOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties ColdStorageOptionsProperty where
  toResourceProperties ColdStorageOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.ColdStorageOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON ColdStorageOptionsProperty where
  toJSON ColdStorageOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" ColdStorageOptionsProperty where
  type PropertyType "Enabled" ColdStorageOptionsProperty = Value Prelude.Bool
  set newValue ColdStorageOptionsProperty {..}
    = ColdStorageOptionsProperty {enabled = Prelude.pure newValue, ..}