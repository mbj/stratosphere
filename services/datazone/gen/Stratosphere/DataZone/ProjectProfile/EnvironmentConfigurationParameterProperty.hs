module Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationParameterProperty (
        EnvironmentConfigurationParameterProperty(..),
        mkEnvironmentConfigurationParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentConfigurationParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparameter.html>
    EnvironmentConfigurationParameterProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparameter.html#cfn-datazone-projectprofile-environmentconfigurationparameter-iseditable>
                                               isEditable :: (Prelude.Maybe (Value Prelude.Bool)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparameter.html#cfn-datazone-projectprofile-environmentconfigurationparameter-name>
                                               name :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparameter.html#cfn-datazone-projectprofile-environmentconfigurationparameter-value>
                                               value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentConfigurationParameterProperty ::
  EnvironmentConfigurationParameterProperty
mkEnvironmentConfigurationParameterProperty
  = EnvironmentConfigurationParameterProperty
      {haddock_workaround_ = (), isEditable = Prelude.Nothing,
       name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EnvironmentConfigurationParameterProperty where
  toResourceProperties EnvironmentConfigurationParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile.EnvironmentConfigurationParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsEditable" Prelude.<$> isEditable,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EnvironmentConfigurationParameterProperty where
  toJSON EnvironmentConfigurationParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsEditable" Prelude.<$> isEditable,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "IsEditable" EnvironmentConfigurationParameterProperty where
  type PropertyType "IsEditable" EnvironmentConfigurationParameterProperty = Value Prelude.Bool
  set newValue EnvironmentConfigurationParameterProperty {..}
    = EnvironmentConfigurationParameterProperty
        {isEditable = Prelude.pure newValue, ..}
instance Property "Name" EnvironmentConfigurationParameterProperty where
  type PropertyType "Name" EnvironmentConfigurationParameterProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationParameterProperty {..}
    = EnvironmentConfigurationParameterProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentConfigurationParameterProperty where
  type PropertyType "Value" EnvironmentConfigurationParameterProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationParameterProperty {..}
    = EnvironmentConfigurationParameterProperty
        {value = Prelude.pure newValue, ..}