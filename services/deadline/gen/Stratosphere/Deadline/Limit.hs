module Stratosphere.Deadline.Limit (
        Limit(..), mkLimit
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Limit
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html>
    Limit {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html#cfn-deadline-limit-amountrequirementname>
           amountRequirementName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html#cfn-deadline-limit-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html#cfn-deadline-limit-displayname>
           displayName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html#cfn-deadline-limit-farmid>
           farmId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-limit.html#cfn-deadline-limit-maxcount>
           maxCount :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLimit ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Integer -> Limit
mkLimit amountRequirementName displayName farmId maxCount
  = Limit
      {haddock_workaround_ = (),
       amountRequirementName = amountRequirementName,
       displayName = displayName, farmId = farmId, maxCount = maxCount,
       description = Prelude.Nothing}
instance ToResourceProperties Limit where
  toResourceProperties Limit {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Limit", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AmountRequirementName" JSON..= amountRequirementName,
                            "DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
                            "MaxCount" JSON..= maxCount]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Limit where
  toJSON Limit {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AmountRequirementName" JSON..= amountRequirementName,
               "DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
               "MaxCount" JSON..= maxCount]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "AmountRequirementName" Limit where
  type PropertyType "AmountRequirementName" Limit = Value Prelude.Text
  set newValue Limit {..}
    = Limit {amountRequirementName = newValue, ..}
instance Property "Description" Limit where
  type PropertyType "Description" Limit = Value Prelude.Text
  set newValue Limit {..}
    = Limit {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Limit where
  type PropertyType "DisplayName" Limit = Value Prelude.Text
  set newValue Limit {..} = Limit {displayName = newValue, ..}
instance Property "FarmId" Limit where
  type PropertyType "FarmId" Limit = Value Prelude.Text
  set newValue Limit {..} = Limit {farmId = newValue, ..}
instance Property "MaxCount" Limit where
  type PropertyType "MaxCount" Limit = Value Prelude.Integer
  set newValue Limit {..} = Limit {maxCount = newValue, ..}