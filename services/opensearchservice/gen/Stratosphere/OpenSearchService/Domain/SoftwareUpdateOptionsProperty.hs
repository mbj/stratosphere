module Stratosphere.OpenSearchService.Domain.SoftwareUpdateOptionsProperty (
        SoftwareUpdateOptionsProperty(..), mkSoftwareUpdateOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SoftwareUpdateOptionsProperty
  = SoftwareUpdateOptionsProperty {autoSoftwareUpdateEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSoftwareUpdateOptionsProperty :: SoftwareUpdateOptionsProperty
mkSoftwareUpdateOptionsProperty
  = SoftwareUpdateOptionsProperty
      {autoSoftwareUpdateEnabled = Prelude.Nothing}
instance ToResourceProperties SoftwareUpdateOptionsProperty where
  toResourceProperties SoftwareUpdateOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.SoftwareUpdateOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoSoftwareUpdateEnabled"
                              Prelude.<$> autoSoftwareUpdateEnabled])}
instance JSON.ToJSON SoftwareUpdateOptionsProperty where
  toJSON SoftwareUpdateOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoSoftwareUpdateEnabled"
                 Prelude.<$> autoSoftwareUpdateEnabled]))
instance Property "AutoSoftwareUpdateEnabled" SoftwareUpdateOptionsProperty where
  type PropertyType "AutoSoftwareUpdateEnabled" SoftwareUpdateOptionsProperty = Value Prelude.Bool
  set newValue SoftwareUpdateOptionsProperty {}
    = SoftwareUpdateOptionsProperty
        {autoSoftwareUpdateEnabled = Prelude.pure newValue, ..}