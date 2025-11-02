module Stratosphere.RDS.DBProxyTargetGroup.ConnectionPoolConfigurationInfoFormatProperty (
        ConnectionPoolConfigurationInfoFormatProperty(..),
        mkConnectionPoolConfigurationInfoFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionPoolConfigurationInfoFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html>
    ConnectionPoolConfigurationInfoFormatProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-connectionborrowtimeout>
                                                   connectionBorrowTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-initquery>
                                                   initQuery :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-maxconnectionspercent>
                                                   maxConnectionsPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-maxidleconnectionspercent>
                                                   maxIdleConnectionsPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-sessionpinningfilters>
                                                   sessionPinningFilters :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionPoolConfigurationInfoFormatProperty ::
  ConnectionPoolConfigurationInfoFormatProperty
mkConnectionPoolConfigurationInfoFormatProperty
  = ConnectionPoolConfigurationInfoFormatProperty
      {haddock_workaround_ = (),
       connectionBorrowTimeout = Prelude.Nothing,
       initQuery = Prelude.Nothing,
       maxConnectionsPercent = Prelude.Nothing,
       maxIdleConnectionsPercent = Prelude.Nothing,
       sessionPinningFilters = Prelude.Nothing}
instance ToResourceProperties ConnectionPoolConfigurationInfoFormatProperty where
  toResourceProperties
    ConnectionPoolConfigurationInfoFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxyTargetGroup.ConnectionPoolConfigurationInfoFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionBorrowTimeout"
                              Prelude.<$> connectionBorrowTimeout,
                            (JSON..=) "InitQuery" Prelude.<$> initQuery,
                            (JSON..=) "MaxConnectionsPercent"
                              Prelude.<$> maxConnectionsPercent,
                            (JSON..=) "MaxIdleConnectionsPercent"
                              Prelude.<$> maxIdleConnectionsPercent,
                            (JSON..=) "SessionPinningFilters"
                              Prelude.<$> sessionPinningFilters])}
instance JSON.ToJSON ConnectionPoolConfigurationInfoFormatProperty where
  toJSON ConnectionPoolConfigurationInfoFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionBorrowTimeout"
                 Prelude.<$> connectionBorrowTimeout,
               (JSON..=) "InitQuery" Prelude.<$> initQuery,
               (JSON..=) "MaxConnectionsPercent"
                 Prelude.<$> maxConnectionsPercent,
               (JSON..=) "MaxIdleConnectionsPercent"
                 Prelude.<$> maxIdleConnectionsPercent,
               (JSON..=) "SessionPinningFilters"
                 Prelude.<$> sessionPinningFilters]))
instance Property "ConnectionBorrowTimeout" ConnectionPoolConfigurationInfoFormatProperty where
  type PropertyType "ConnectionBorrowTimeout" ConnectionPoolConfigurationInfoFormatProperty = Value Prelude.Integer
  set newValue ConnectionPoolConfigurationInfoFormatProperty {..}
    = ConnectionPoolConfigurationInfoFormatProperty
        {connectionBorrowTimeout = Prelude.pure newValue, ..}
instance Property "InitQuery" ConnectionPoolConfigurationInfoFormatProperty where
  type PropertyType "InitQuery" ConnectionPoolConfigurationInfoFormatProperty = Value Prelude.Text
  set newValue ConnectionPoolConfigurationInfoFormatProperty {..}
    = ConnectionPoolConfigurationInfoFormatProperty
        {initQuery = Prelude.pure newValue, ..}
instance Property "MaxConnectionsPercent" ConnectionPoolConfigurationInfoFormatProperty where
  type PropertyType "MaxConnectionsPercent" ConnectionPoolConfigurationInfoFormatProperty = Value Prelude.Integer
  set newValue ConnectionPoolConfigurationInfoFormatProperty {..}
    = ConnectionPoolConfigurationInfoFormatProperty
        {maxConnectionsPercent = Prelude.pure newValue, ..}
instance Property "MaxIdleConnectionsPercent" ConnectionPoolConfigurationInfoFormatProperty where
  type PropertyType "MaxIdleConnectionsPercent" ConnectionPoolConfigurationInfoFormatProperty = Value Prelude.Integer
  set newValue ConnectionPoolConfigurationInfoFormatProperty {..}
    = ConnectionPoolConfigurationInfoFormatProperty
        {maxIdleConnectionsPercent = Prelude.pure newValue, ..}
instance Property "SessionPinningFilters" ConnectionPoolConfigurationInfoFormatProperty where
  type PropertyType "SessionPinningFilters" ConnectionPoolConfigurationInfoFormatProperty = ValueList Prelude.Text
  set newValue ConnectionPoolConfigurationInfoFormatProperty {..}
    = ConnectionPoolConfigurationInfoFormatProperty
        {sessionPinningFilters = Prelude.pure newValue, ..}