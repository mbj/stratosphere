module Stratosphere.QuickSight.Template.RollingDateConfigurationProperty (
        RollingDateConfigurationProperty(..),
        mkRollingDateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RollingDateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-rollingdateconfiguration.html>
    RollingDateConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-rollingdateconfiguration.html#cfn-quicksight-template-rollingdateconfiguration-datasetidentifier>
                                      dataSetIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-rollingdateconfiguration.html#cfn-quicksight-template-rollingdateconfiguration-expression>
                                      expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRollingDateConfigurationProperty ::
  Value Prelude.Text -> RollingDateConfigurationProperty
mkRollingDateConfigurationProperty expression
  = RollingDateConfigurationProperty
      {haddock_workaround_ = (), expression = expression,
       dataSetIdentifier = Prelude.Nothing}
instance ToResourceProperties RollingDateConfigurationProperty where
  toResourceProperties RollingDateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RollingDateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSetIdentifier" Prelude.<$> dataSetIdentifier]))}
instance JSON.ToJSON RollingDateConfigurationProperty where
  toJSON RollingDateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "DataSetIdentifier" Prelude.<$> dataSetIdentifier])))
instance Property "DataSetIdentifier" RollingDateConfigurationProperty where
  type PropertyType "DataSetIdentifier" RollingDateConfigurationProperty = Value Prelude.Text
  set newValue RollingDateConfigurationProperty {..}
    = RollingDateConfigurationProperty
        {dataSetIdentifier = Prelude.pure newValue, ..}
instance Property "Expression" RollingDateConfigurationProperty where
  type PropertyType "Expression" RollingDateConfigurationProperty = Value Prelude.Text
  set newValue RollingDateConfigurationProperty {..}
    = RollingDateConfigurationProperty {expression = newValue, ..}