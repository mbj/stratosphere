module Stratosphere.QuickSight.Template.ReferenceLineStaticDataConfigurationProperty (
        ReferenceLineStaticDataConfigurationProperty(..),
        mkReferenceLineStaticDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineStaticDataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinestaticdataconfiguration.html>
    ReferenceLineStaticDataConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinestaticdataconfiguration.html#cfn-quicksight-template-referencelinestaticdataconfiguration-value>
                                                  value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineStaticDataConfigurationProperty ::
  Value Prelude.Double
  -> ReferenceLineStaticDataConfigurationProperty
mkReferenceLineStaticDataConfigurationProperty value
  = ReferenceLineStaticDataConfigurationProperty
      {haddock_workaround_ = (), value = value}
instance ToResourceProperties ReferenceLineStaticDataConfigurationProperty where
  toResourceProperties
    ReferenceLineStaticDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineStaticDataConfiguration",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON ReferenceLineStaticDataConfigurationProperty where
  toJSON ReferenceLineStaticDataConfigurationProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" ReferenceLineStaticDataConfigurationProperty where
  type PropertyType "Value" ReferenceLineStaticDataConfigurationProperty = Value Prelude.Double
  set newValue ReferenceLineStaticDataConfigurationProperty {..}
    = ReferenceLineStaticDataConfigurationProperty
        {value = newValue, ..}