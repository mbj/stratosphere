module Stratosphere.RefactorSpaces.Environment (
        Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = Environment {description :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 networkFabricType :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment :: Environment
mkEnvironment
  = Environment
      {description = Prelude.Nothing, name = Prelude.Nothing,
       networkFabricType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Environment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NetworkFabricType" Prelude.<$> networkFabricType,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NetworkFabricType" Prelude.<$> networkFabricType,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {name = Prelude.pure newValue, ..}
instance Property "NetworkFabricType" Environment where
  type PropertyType "NetworkFabricType" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {networkFabricType = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}