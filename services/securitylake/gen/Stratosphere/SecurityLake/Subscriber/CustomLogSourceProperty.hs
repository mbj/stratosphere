module Stratosphere.SecurityLake.Subscriber.CustomLogSourceProperty (
        CustomLogSourceProperty(..), mkCustomLogSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLogSourceProperty
  = CustomLogSourceProperty {sourceName :: (Prelude.Maybe (Value Prelude.Text)),
                             sourceVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomLogSourceProperty :: CustomLogSourceProperty
mkCustomLogSourceProperty
  = CustomLogSourceProperty
      {sourceName = Prelude.Nothing, sourceVersion = Prelude.Nothing}
instance ToResourceProperties CustomLogSourceProperty where
  toResourceProperties CustomLogSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::Subscriber.CustomLogSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceName" Prelude.<$> sourceName,
                            (JSON..=) "SourceVersion" Prelude.<$> sourceVersion])}
instance JSON.ToJSON CustomLogSourceProperty where
  toJSON CustomLogSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceName" Prelude.<$> sourceName,
               (JSON..=) "SourceVersion" Prelude.<$> sourceVersion]))
instance Property "SourceName" CustomLogSourceProperty where
  type PropertyType "SourceName" CustomLogSourceProperty = Value Prelude.Text
  set newValue CustomLogSourceProperty {..}
    = CustomLogSourceProperty {sourceName = Prelude.pure newValue, ..}
instance Property "SourceVersion" CustomLogSourceProperty where
  type PropertyType "SourceVersion" CustomLogSourceProperty = Value Prelude.Text
  set newValue CustomLogSourceProperty {..}
    = CustomLogSourceProperty
        {sourceVersion = Prelude.pure newValue, ..}