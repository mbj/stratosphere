module Stratosphere.DataBrew.Job.EntityDetectorConfigurationProperty (
        module Exports, EntityDetectorConfigurationProperty(..),
        mkEntityDetectorConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.AllowedStatisticsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityDetectorConfigurationProperty
  = EntityDetectorConfigurationProperty {allowedStatistics :: (Prelude.Maybe AllowedStatisticsProperty),
                                         entityTypes :: (ValueList Prelude.Text)}
mkEntityDetectorConfigurationProperty ::
  ValueList Prelude.Text -> EntityDetectorConfigurationProperty
mkEntityDetectorConfigurationProperty entityTypes
  = EntityDetectorConfigurationProperty
      {entityTypes = entityTypes, allowedStatistics = Prelude.Nothing}
instance ToResourceProperties EntityDetectorConfigurationProperty where
  toResourceProperties EntityDetectorConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.EntityDetectorConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityTypes" JSON..= entityTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedStatistics" Prelude.<$> allowedStatistics]))}
instance JSON.ToJSON EntityDetectorConfigurationProperty where
  toJSON EntityDetectorConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityTypes" JSON..= entityTypes]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedStatistics" Prelude.<$> allowedStatistics])))
instance Property "AllowedStatistics" EntityDetectorConfigurationProperty where
  type PropertyType "AllowedStatistics" EntityDetectorConfigurationProperty = AllowedStatisticsProperty
  set newValue EntityDetectorConfigurationProperty {..}
    = EntityDetectorConfigurationProperty
        {allowedStatistics = Prelude.pure newValue, ..}
instance Property "EntityTypes" EntityDetectorConfigurationProperty where
  type PropertyType "EntityTypes" EntityDetectorConfigurationProperty = ValueList Prelude.Text
  set newValue EntityDetectorConfigurationProperty {..}
    = EntityDetectorConfigurationProperty {entityTypes = newValue, ..}