module Stratosphere.OpenSearchServerless.Index.IndexSettingsProperty (
        module Exports, IndexSettingsProperty(..), mkIndexSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.IndexProperty as Exports
import Stratosphere.ResourceProperties
data IndexSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-indexsettings.html>
    IndexSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-indexsettings.html#cfn-opensearchserverless-index-indexsettings-index>
                           index :: (Prelude.Maybe IndexProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexSettingsProperty :: IndexSettingsProperty
mkIndexSettingsProperty
  = IndexSettingsProperty
      {haddock_workaround_ = (), index = Prelude.Nothing}
instance ToResourceProperties IndexSettingsProperty where
  toResourceProperties IndexSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.IndexSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Index" Prelude.<$> index])}
instance JSON.ToJSON IndexSettingsProperty where
  toJSON IndexSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Index" Prelude.<$> index]))
instance Property "Index" IndexSettingsProperty where
  type PropertyType "Index" IndexSettingsProperty = IndexProperty
  set newValue IndexSettingsProperty {..}
    = IndexSettingsProperty {index = Prelude.pure newValue, ..}