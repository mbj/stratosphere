module Stratosphere.EMR.Cluster.ApplicationProperty (
        ApplicationProperty(..), mkApplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationProperty
  = ApplicationProperty {additionalInfo :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                         args :: (Prelude.Maybe (ValueList Prelude.Text)),
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationProperty :: ApplicationProperty
mkApplicationProperty
  = ApplicationProperty
      {additionalInfo = Prelude.Nothing, args = Prelude.Nothing,
       name = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties ApplicationProperty where
  toResourceProperties ApplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.Application",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
                            (JSON..=) "Args" Prelude.<$> args,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON ApplicationProperty where
  toJSON ApplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
               (JSON..=) "Args" Prelude.<$> args,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "AdditionalInfo" ApplicationProperty where
  type PropertyType "AdditionalInfo" ApplicationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ApplicationProperty {..}
    = ApplicationProperty {additionalInfo = Prelude.pure newValue, ..}
instance Property "Args" ApplicationProperty where
  type PropertyType "Args" ApplicationProperty = ValueList Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {args = Prelude.pure newValue, ..}
instance Property "Name" ApplicationProperty where
  type PropertyType "Name" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {name = Prelude.pure newValue, ..}
instance Property "Version" ApplicationProperty where
  type PropertyType "Version" ApplicationProperty = Value Prelude.Text
  set newValue ApplicationProperty {..}
    = ApplicationProperty {version = Prelude.pure newValue, ..}