module Stratosphere.QBusiness.Index.IndexCapacityConfigurationProperty (
        IndexCapacityConfigurationProperty(..),
        mkIndexCapacityConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IndexCapacityConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexcapacityconfiguration.html>
    IndexCapacityConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexcapacityconfiguration.html#cfn-qbusiness-index-indexcapacityconfiguration-units>
                                        units :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexCapacityConfigurationProperty ::
  IndexCapacityConfigurationProperty
mkIndexCapacityConfigurationProperty
  = IndexCapacityConfigurationProperty
      {haddock_workaround_ = (), units = Prelude.Nothing}
instance ToResourceProperties IndexCapacityConfigurationProperty where
  toResourceProperties IndexCapacityConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index.IndexCapacityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Units" Prelude.<$> units])}
instance JSON.ToJSON IndexCapacityConfigurationProperty where
  toJSON IndexCapacityConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Units" Prelude.<$> units]))
instance Property "Units" IndexCapacityConfigurationProperty where
  type PropertyType "Units" IndexCapacityConfigurationProperty = Value Prelude.Double
  set newValue IndexCapacityConfigurationProperty {..}
    = IndexCapacityConfigurationProperty
        {units = Prelude.pure newValue, ..}