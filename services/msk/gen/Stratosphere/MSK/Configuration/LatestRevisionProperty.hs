module Stratosphere.MSK.Configuration.LatestRevisionProperty (
        LatestRevisionProperty(..), mkLatestRevisionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LatestRevisionProperty
  = LatestRevisionProperty {creationTime :: (Prelude.Maybe (Value Prelude.Text)),
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            revision :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLatestRevisionProperty :: LatestRevisionProperty
mkLatestRevisionProperty
  = LatestRevisionProperty
      {creationTime = Prelude.Nothing, description = Prelude.Nothing,
       revision = Prelude.Nothing}
instance ToResourceProperties LatestRevisionProperty where
  toResourceProperties LatestRevisionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Configuration.LatestRevision",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreationTime" Prelude.<$> creationTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Revision" Prelude.<$> revision])}
instance JSON.ToJSON LatestRevisionProperty where
  toJSON LatestRevisionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreationTime" Prelude.<$> creationTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Revision" Prelude.<$> revision]))
instance Property "CreationTime" LatestRevisionProperty where
  type PropertyType "CreationTime" LatestRevisionProperty = Value Prelude.Text
  set newValue LatestRevisionProperty {..}
    = LatestRevisionProperty {creationTime = Prelude.pure newValue, ..}
instance Property "Description" LatestRevisionProperty where
  type PropertyType "Description" LatestRevisionProperty = Value Prelude.Text
  set newValue LatestRevisionProperty {..}
    = LatestRevisionProperty {description = Prelude.pure newValue, ..}
instance Property "Revision" LatestRevisionProperty where
  type PropertyType "Revision" LatestRevisionProperty = Value Prelude.Integer
  set newValue LatestRevisionProperty {..}
    = LatestRevisionProperty {revision = Prelude.pure newValue, ..}