module Stratosphere.Events.Connection.ResourceParametersProperty (
        ResourceParametersProperty(..), mkResourceParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceParametersProperty
  = ResourceParametersProperty {resourceAssociationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                resourceConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceParametersProperty ::
  Value Prelude.Text -> ResourceParametersProperty
mkResourceParametersProperty resourceConfigurationArn
  = ResourceParametersProperty
      {resourceConfigurationArn = resourceConfigurationArn,
       resourceAssociationArn = Prelude.Nothing}
instance ToResourceProperties ResourceParametersProperty where
  toResourceProperties ResourceParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ResourceParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceConfigurationArn" JSON..= resourceConfigurationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceAssociationArn"
                                 Prelude.<$> resourceAssociationArn]))}
instance JSON.ToJSON ResourceParametersProperty where
  toJSON ResourceParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceConfigurationArn" JSON..= resourceConfigurationArn]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceAssociationArn"
                    Prelude.<$> resourceAssociationArn])))
instance Property "ResourceAssociationArn" ResourceParametersProperty where
  type PropertyType "ResourceAssociationArn" ResourceParametersProperty = Value Prelude.Text
  set newValue ResourceParametersProperty {..}
    = ResourceParametersProperty
        {resourceAssociationArn = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationArn" ResourceParametersProperty where
  type PropertyType "ResourceConfigurationArn" ResourceParametersProperty = Value Prelude.Text
  set newValue ResourceParametersProperty {..}
    = ResourceParametersProperty
        {resourceConfigurationArn = newValue, ..}