module Stratosphere.MediaPackageV2.OriginEndpoint.ScteProperty (
        ScteProperty(..), mkScteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScteProperty
  = ScteProperty {scteFilter :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScteProperty :: ScteProperty
mkScteProperty = ScteProperty {scteFilter = Prelude.Nothing}
instance ToResourceProperties ScteProperty where
  toResourceProperties ScteProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.Scte",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScteFilter" Prelude.<$> scteFilter])}
instance JSON.ToJSON ScteProperty where
  toJSON ScteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScteFilter" Prelude.<$> scteFilter]))
instance Property "ScteFilter" ScteProperty where
  type PropertyType "ScteFilter" ScteProperty = ValueList Prelude.Text
  set newValue ScteProperty {}
    = ScteProperty {scteFilter = Prelude.pure newValue, ..}