module Stratosphere.Glue.Crawler.DeltaTargetProperty (
        DeltaTargetProperty(..), mkDeltaTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaTargetProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-deltatarget.html>
    DeltaTargetProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-deltatarget.html#cfn-glue-crawler-deltatarget-connectionname>
                         connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-deltatarget.html#cfn-glue-crawler-deltatarget-createnativedeltatable>
                         createNativeDeltaTable :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-deltatarget.html#cfn-glue-crawler-deltatarget-deltatables>
                         deltaTables :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-deltatarget.html#cfn-glue-crawler-deltatarget-writemanifest>
                         writeManifest :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeltaTargetProperty :: DeltaTargetProperty
mkDeltaTargetProperty
  = DeltaTargetProperty
      {connectionName = Prelude.Nothing,
       createNativeDeltaTable = Prelude.Nothing,
       deltaTables = Prelude.Nothing, writeManifest = Prelude.Nothing}
instance ToResourceProperties DeltaTargetProperty where
  toResourceProperties DeltaTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.DeltaTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "CreateNativeDeltaTable"
                              Prelude.<$> createNativeDeltaTable,
                            (JSON..=) "DeltaTables" Prelude.<$> deltaTables,
                            (JSON..=) "WriteManifest" Prelude.<$> writeManifest])}
instance JSON.ToJSON DeltaTargetProperty where
  toJSON DeltaTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "CreateNativeDeltaTable"
                 Prelude.<$> createNativeDeltaTable,
               (JSON..=) "DeltaTables" Prelude.<$> deltaTables,
               (JSON..=) "WriteManifest" Prelude.<$> writeManifest]))
instance Property "ConnectionName" DeltaTargetProperty where
  type PropertyType "ConnectionName" DeltaTargetProperty = Value Prelude.Text
  set newValue DeltaTargetProperty {..}
    = DeltaTargetProperty {connectionName = Prelude.pure newValue, ..}
instance Property "CreateNativeDeltaTable" DeltaTargetProperty where
  type PropertyType "CreateNativeDeltaTable" DeltaTargetProperty = Value Prelude.Bool
  set newValue DeltaTargetProperty {..}
    = DeltaTargetProperty
        {createNativeDeltaTable = Prelude.pure newValue, ..}
instance Property "DeltaTables" DeltaTargetProperty where
  type PropertyType "DeltaTables" DeltaTargetProperty = ValueList Prelude.Text
  set newValue DeltaTargetProperty {..}
    = DeltaTargetProperty {deltaTables = Prelude.pure newValue, ..}
instance Property "WriteManifest" DeltaTargetProperty where
  type PropertyType "WriteManifest" DeltaTargetProperty = Value Prelude.Bool
  set newValue DeltaTargetProperty {..}
    = DeltaTargetProperty {writeManifest = Prelude.pure newValue, ..}