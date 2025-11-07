module Stratosphere.RDS.DBInstance.DBInstanceStatusInfoProperty (
        DBInstanceStatusInfoProperty(..), mkDBInstanceStatusInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBInstanceStatusInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancestatusinfo.html>
    DBInstanceStatusInfoProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancestatusinfo.html#cfn-rds-dbinstance-dbinstancestatusinfo-message>
                                  message :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancestatusinfo.html#cfn-rds-dbinstance-dbinstancestatusinfo-normal>
                                  normal :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancestatusinfo.html#cfn-rds-dbinstance-dbinstancestatusinfo-status>
                                  status :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancestatusinfo.html#cfn-rds-dbinstance-dbinstancestatusinfo-statustype>
                                  statusType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBInstanceStatusInfoProperty :: DBInstanceStatusInfoProperty
mkDBInstanceStatusInfoProperty
  = DBInstanceStatusInfoProperty
      {haddock_workaround_ = (), message = Prelude.Nothing,
       normal = Prelude.Nothing, status = Prelude.Nothing,
       statusType = Prelude.Nothing}
instance ToResourceProperties DBInstanceStatusInfoProperty where
  toResourceProperties DBInstanceStatusInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.DBInstanceStatusInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Normal" Prelude.<$> normal,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "StatusType" Prelude.<$> statusType])}
instance JSON.ToJSON DBInstanceStatusInfoProperty where
  toJSON DBInstanceStatusInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Normal" Prelude.<$> normal,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "StatusType" Prelude.<$> statusType]))
instance Property "Message" DBInstanceStatusInfoProperty where
  type PropertyType "Message" DBInstanceStatusInfoProperty = Value Prelude.Text
  set newValue DBInstanceStatusInfoProperty {..}
    = DBInstanceStatusInfoProperty
        {message = Prelude.pure newValue, ..}
instance Property "Normal" DBInstanceStatusInfoProperty where
  type PropertyType "Normal" DBInstanceStatusInfoProperty = Value Prelude.Bool
  set newValue DBInstanceStatusInfoProperty {..}
    = DBInstanceStatusInfoProperty {normal = Prelude.pure newValue, ..}
instance Property "Status" DBInstanceStatusInfoProperty where
  type PropertyType "Status" DBInstanceStatusInfoProperty = Value Prelude.Text
  set newValue DBInstanceStatusInfoProperty {..}
    = DBInstanceStatusInfoProperty {status = Prelude.pure newValue, ..}
instance Property "StatusType" DBInstanceStatusInfoProperty where
  type PropertyType "StatusType" DBInstanceStatusInfoProperty = Value Prelude.Text
  set newValue DBInstanceStatusInfoProperty {..}
    = DBInstanceStatusInfoProperty
        {statusType = Prelude.pure newValue, ..}