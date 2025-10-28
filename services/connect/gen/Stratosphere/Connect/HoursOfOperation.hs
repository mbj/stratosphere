module Stratosphere.Connect.HoursOfOperation (
        module Exports, HoursOfOperation(..), mkHoursOfOperation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.HoursOfOperation.HoursOfOperationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.HoursOfOperation.HoursOfOperationOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data HoursOfOperation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html>
    HoursOfOperation {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-config>
                      config :: [HoursOfOperationConfigProperty],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-hoursofoperationoverrides>
                      hoursOfOperationOverrides :: (Prelude.Maybe [HoursOfOperationOverrideProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-instancearn>
                      instanceArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-hoursofoperation.html#cfn-connect-hoursofoperation-timezone>
                      timeZone :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperation ::
  [HoursOfOperationConfigProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> HoursOfOperation
mkHoursOfOperation config instanceArn name timeZone
  = HoursOfOperation
      {haddock_workaround_ = (), config = config,
       instanceArn = instanceArn, name = name, timeZone = timeZone,
       description = Prelude.Nothing,
       hoursOfOperationOverrides = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties HoursOfOperation where
  toResourceProperties HoursOfOperation {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Config" JSON..= config, "InstanceArn" JSON..= instanceArn,
                            "Name" JSON..= name, "TimeZone" JSON..= timeZone]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "HoursOfOperationOverrides"
                                 Prelude.<$> hoursOfOperationOverrides,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON HoursOfOperation where
  toJSON HoursOfOperation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Config" JSON..= config, "InstanceArn" JSON..= instanceArn,
               "Name" JSON..= name, "TimeZone" JSON..= timeZone]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "HoursOfOperationOverrides"
                    Prelude.<$> hoursOfOperationOverrides,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Config" HoursOfOperation where
  type PropertyType "Config" HoursOfOperation = [HoursOfOperationConfigProperty]
  set newValue HoursOfOperation {..}
    = HoursOfOperation {config = newValue, ..}
instance Property "Description" HoursOfOperation where
  type PropertyType "Description" HoursOfOperation = Value Prelude.Text
  set newValue HoursOfOperation {..}
    = HoursOfOperation {description = Prelude.pure newValue, ..}
instance Property "HoursOfOperationOverrides" HoursOfOperation where
  type PropertyType "HoursOfOperationOverrides" HoursOfOperation = [HoursOfOperationOverrideProperty]
  set newValue HoursOfOperation {..}
    = HoursOfOperation
        {hoursOfOperationOverrides = Prelude.pure newValue, ..}
instance Property "InstanceArn" HoursOfOperation where
  type PropertyType "InstanceArn" HoursOfOperation = Value Prelude.Text
  set newValue HoursOfOperation {..}
    = HoursOfOperation {instanceArn = newValue, ..}
instance Property "Name" HoursOfOperation where
  type PropertyType "Name" HoursOfOperation = Value Prelude.Text
  set newValue HoursOfOperation {..}
    = HoursOfOperation {name = newValue, ..}
instance Property "Tags" HoursOfOperation where
  type PropertyType "Tags" HoursOfOperation = [Tag]
  set newValue HoursOfOperation {..}
    = HoursOfOperation {tags = Prelude.pure newValue, ..}
instance Property "TimeZone" HoursOfOperation where
  type PropertyType "TimeZone" HoursOfOperation = Value Prelude.Text
  set newValue HoursOfOperation {..}
    = HoursOfOperation {timeZone = newValue, ..}