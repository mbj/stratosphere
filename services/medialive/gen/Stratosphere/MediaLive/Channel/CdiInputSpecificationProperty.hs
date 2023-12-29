module Stratosphere.MediaLive.Channel.CdiInputSpecificationProperty (
        CdiInputSpecificationProperty(..), mkCdiInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CdiInputSpecificationProperty
  = CdiInputSpecificationProperty {resolution :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCdiInputSpecificationProperty :: CdiInputSpecificationProperty
mkCdiInputSpecificationProperty
  = CdiInputSpecificationProperty {resolution = Prelude.Nothing}
instance ToResourceProperties CdiInputSpecificationProperty where
  toResourceProperties CdiInputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CdiInputSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Resolution" Prelude.<$> resolution])}
instance JSON.ToJSON CdiInputSpecificationProperty where
  toJSON CdiInputSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Resolution" Prelude.<$> resolution]))
instance Property "Resolution" CdiInputSpecificationProperty where
  type PropertyType "Resolution" CdiInputSpecificationProperty = Value Prelude.Text
  set newValue CdiInputSpecificationProperty {}
    = CdiInputSpecificationProperty
        {resolution = Prelude.pure newValue, ..}