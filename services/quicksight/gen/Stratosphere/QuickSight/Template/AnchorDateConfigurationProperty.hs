module Stratosphere.QuickSight.Template.AnchorDateConfigurationProperty (
        AnchorDateConfigurationProperty(..),
        mkAnchorDateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnchorDateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-anchordateconfiguration.html>
    AnchorDateConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-anchordateconfiguration.html#cfn-quicksight-template-anchordateconfiguration-anchoroption>
                                     anchorOption :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-anchordateconfiguration.html#cfn-quicksight-template-anchordateconfiguration-parametername>
                                     parameterName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnchorDateConfigurationProperty ::
  AnchorDateConfigurationProperty
mkAnchorDateConfigurationProperty
  = AnchorDateConfigurationProperty
      {haddock_workaround_ = (), anchorOption = Prelude.Nothing,
       parameterName = Prelude.Nothing}
instance ToResourceProperties AnchorDateConfigurationProperty where
  toResourceProperties AnchorDateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AnchorDateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnchorOption" Prelude.<$> anchorOption,
                            (JSON..=) "ParameterName" Prelude.<$> parameterName])}
instance JSON.ToJSON AnchorDateConfigurationProperty where
  toJSON AnchorDateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnchorOption" Prelude.<$> anchorOption,
               (JSON..=) "ParameterName" Prelude.<$> parameterName]))
instance Property "AnchorOption" AnchorDateConfigurationProperty where
  type PropertyType "AnchorOption" AnchorDateConfigurationProperty = Value Prelude.Text
  set newValue AnchorDateConfigurationProperty {..}
    = AnchorDateConfigurationProperty
        {anchorOption = Prelude.pure newValue, ..}
instance Property "ParameterName" AnchorDateConfigurationProperty where
  type PropertyType "ParameterName" AnchorDateConfigurationProperty = Value Prelude.Text
  set newValue AnchorDateConfigurationProperty {..}
    = AnchorDateConfigurationProperty
        {parameterName = Prelude.pure newValue, ..}