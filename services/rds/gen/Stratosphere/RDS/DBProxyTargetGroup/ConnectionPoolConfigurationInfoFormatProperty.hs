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
  = ConnectionPoolConfigurationInfoFormatProperty {connectionBorrowTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   initQuery :: (Prelude.Maybe (Value Prelude.Text)),
                                                   maxConnectionsPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   maxIdleConnectionsPercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   sessionPinningFilters :: (Prelude.Maybe (ValueList Prelude.Text))}
mkConnectionPoolConfigurationInfoFormatProperty ::
  ConnectionPoolConfigurationInfoFormatProperty
mkConnectionPoolConfigurationInfoFormatProperty
  = ConnectionPoolConfigurationInfoFormatProperty
      {connectionBorrowTimeout = Prelude.Nothing,
       initQuery = Prelude.Nothing,
       maxConnectionsPercent = Prelude.Nothing,
       maxIdleConnectionsPercent = Prelude.Nothing,
       sessionPinningFilters = Prelude.Nothing}
instance ToResourceProperties ConnectionPoolConfigurationInfoFormatProperty where
  toResourceProperties
    ConnectionPoolConfigurationInfoFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxyTargetGroup.ConnectionPoolConfigurationInfoFormat",
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