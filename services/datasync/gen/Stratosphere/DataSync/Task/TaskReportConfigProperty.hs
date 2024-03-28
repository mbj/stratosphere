module Stratosphere.DataSync.Task.TaskReportConfigProperty (
        module Exports, TaskReportConfigProperty(..),
        mkTaskReportConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.DestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.OverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskReportConfigProperty
  = TaskReportConfigProperty {destination :: DestinationProperty,
                              objectVersionIds :: (Prelude.Maybe (Value Prelude.Text)),
                              outputType :: (Value Prelude.Text),
                              overrides :: (Prelude.Maybe OverridesProperty),
                              reportLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskReportConfigProperty ::
  DestinationProperty
  -> Value Prelude.Text -> TaskReportConfigProperty
mkTaskReportConfigProperty destination outputType
  = TaskReportConfigProperty
      {destination = destination, outputType = outputType,
       objectVersionIds = Prelude.Nothing, overrides = Prelude.Nothing,
       reportLevel = Prelude.Nothing}
instance ToResourceProperties TaskReportConfigProperty where
  toResourceProperties TaskReportConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.TaskReportConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination,
                            "OutputType" JSON..= outputType]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectVersionIds" Prelude.<$> objectVersionIds,
                               (JSON..=) "Overrides" Prelude.<$> overrides,
                               (JSON..=) "ReportLevel" Prelude.<$> reportLevel]))}
instance JSON.ToJSON TaskReportConfigProperty where
  toJSON TaskReportConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination,
               "OutputType" JSON..= outputType]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectVersionIds" Prelude.<$> objectVersionIds,
                  (JSON..=) "Overrides" Prelude.<$> overrides,
                  (JSON..=) "ReportLevel" Prelude.<$> reportLevel])))
instance Property "Destination" TaskReportConfigProperty where
  type PropertyType "Destination" TaskReportConfigProperty = DestinationProperty
  set newValue TaskReportConfigProperty {..}
    = TaskReportConfigProperty {destination = newValue, ..}
instance Property "ObjectVersionIds" TaskReportConfigProperty where
  type PropertyType "ObjectVersionIds" TaskReportConfigProperty = Value Prelude.Text
  set newValue TaskReportConfigProperty {..}
    = TaskReportConfigProperty
        {objectVersionIds = Prelude.pure newValue, ..}
instance Property "OutputType" TaskReportConfigProperty where
  type PropertyType "OutputType" TaskReportConfigProperty = Value Prelude.Text
  set newValue TaskReportConfigProperty {..}
    = TaskReportConfigProperty {outputType = newValue, ..}
instance Property "Overrides" TaskReportConfigProperty where
  type PropertyType "Overrides" TaskReportConfigProperty = OverridesProperty
  set newValue TaskReportConfigProperty {..}
    = TaskReportConfigProperty {overrides = Prelude.pure newValue, ..}
instance Property "ReportLevel" TaskReportConfigProperty where
  type PropertyType "ReportLevel" TaskReportConfigProperty = Value Prelude.Text
  set newValue TaskReportConfigProperty {..}
    = TaskReportConfigProperty
        {reportLevel = Prelude.pure newValue, ..}