module Stratosphere.ServiceCatalog.LaunchNotificationConstraint (
        LaunchNotificationConstraint(..), mkLaunchNotificationConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchNotificationConstraint
  = LaunchNotificationConstraint {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  notificationArns :: (ValueList Prelude.Text),
                                  portfolioId :: (Value Prelude.Text),
                                  productId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchNotificationConstraint ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LaunchNotificationConstraint
mkLaunchNotificationConstraint
  notificationArns
  portfolioId
  productId
  = LaunchNotificationConstraint
      {notificationArns = notificationArns, portfolioId = portfolioId,
       productId = productId, acceptLanguage = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties LaunchNotificationConstraint where
  toResourceProperties LaunchNotificationConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::LaunchNotificationConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NotificationArns" JSON..= notificationArns,
                            "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON LaunchNotificationConstraint where
  toJSON LaunchNotificationConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NotificationArns" JSON..= notificationArns,
               "PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AcceptLanguage" LaunchNotificationConstraint where
  type PropertyType "AcceptLanguage" LaunchNotificationConstraint = Value Prelude.Text
  set newValue LaunchNotificationConstraint {..}
    = LaunchNotificationConstraint
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" LaunchNotificationConstraint where
  type PropertyType "Description" LaunchNotificationConstraint = Value Prelude.Text
  set newValue LaunchNotificationConstraint {..}
    = LaunchNotificationConstraint
        {description = Prelude.pure newValue, ..}
instance Property "NotificationArns" LaunchNotificationConstraint where
  type PropertyType "NotificationArns" LaunchNotificationConstraint = ValueList Prelude.Text
  set newValue LaunchNotificationConstraint {..}
    = LaunchNotificationConstraint {notificationArns = newValue, ..}
instance Property "PortfolioId" LaunchNotificationConstraint where
  type PropertyType "PortfolioId" LaunchNotificationConstraint = Value Prelude.Text
  set newValue LaunchNotificationConstraint {..}
    = LaunchNotificationConstraint {portfolioId = newValue, ..}
instance Property "ProductId" LaunchNotificationConstraint where
  type PropertyType "ProductId" LaunchNotificationConstraint = Value Prelude.Text
  set newValue LaunchNotificationConstraint {..}
    = LaunchNotificationConstraint {productId = newValue, ..}