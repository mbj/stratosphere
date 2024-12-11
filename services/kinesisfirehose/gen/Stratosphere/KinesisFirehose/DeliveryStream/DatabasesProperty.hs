module Stratosphere.KinesisFirehose.DeliveryStream.DatabasesProperty (
        DatabasesProperty(..), mkDatabasesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabasesProperty
  = DatabasesProperty {exclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                       include :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabasesProperty :: DatabasesProperty
mkDatabasesProperty
  = DatabasesProperty
      {exclude = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties DatabasesProperty where
  toResourceProperties DatabasesProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.Databases",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exclude" Prelude.<$> exclude,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON DatabasesProperty where
  toJSON DatabasesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exclude" Prelude.<$> exclude,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Exclude" DatabasesProperty where
  type PropertyType "Exclude" DatabasesProperty = ValueList Prelude.Text
  set newValue DatabasesProperty {..}
    = DatabasesProperty {exclude = Prelude.pure newValue, ..}
instance Property "Include" DatabasesProperty where
  type PropertyType "Include" DatabasesProperty = ValueList Prelude.Text
  set newValue DatabasesProperty {..}
    = DatabasesProperty {include = Prelude.pure newValue, ..}