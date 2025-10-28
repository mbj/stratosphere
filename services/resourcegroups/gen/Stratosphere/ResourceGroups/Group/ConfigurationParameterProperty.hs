module Stratosphere.ResourceGroups.Group.ConfigurationParameterProperty (
        ConfigurationParameterProperty(..),
        mkConfigurationParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html>
    ConfigurationParameterProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html#cfn-resourcegroups-group-configurationparameter-name>
                                    name :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html#cfn-resourcegroups-group-configurationparameter-values>
                                    values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationParameterProperty :: ConfigurationParameterProperty
mkConfigurationParameterProperty
  = ConfigurationParameterProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties ConfigurationParameterProperty where
  toResourceProperties ConfigurationParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.ConfigurationParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON ConfigurationParameterProperty where
  toJSON ConfigurationParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Name" ConfigurationParameterProperty where
  type PropertyType "Name" ConfigurationParameterProperty = Value Prelude.Text
  set newValue ConfigurationParameterProperty {..}
    = ConfigurationParameterProperty {name = Prelude.pure newValue, ..}
instance Property "Values" ConfigurationParameterProperty where
  type PropertyType "Values" ConfigurationParameterProperty = ValueList Prelude.Text
  set newValue ConfigurationParameterProperty {..}
    = ConfigurationParameterProperty
        {values = Prelude.pure newValue, ..}