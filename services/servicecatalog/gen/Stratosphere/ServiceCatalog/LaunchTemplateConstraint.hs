module Stratosphere.ServiceCatalog.LaunchTemplateConstraint (
        LaunchTemplateConstraint(..), mkLaunchTemplateConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateConstraint
  = LaunchTemplateConstraint {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              portfolioId :: (Value Prelude.Text),
                              productId :: (Value Prelude.Text),
                              rules :: (Value Prelude.Text)}
mkLaunchTemplateConstraint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LaunchTemplateConstraint
mkLaunchTemplateConstraint portfolioId productId rules
  = LaunchTemplateConstraint
      {portfolioId = portfolioId, productId = productId, rules = rules,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateConstraint where
  toResourceProperties LaunchTemplateConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::LaunchTemplateConstraint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
                            "Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON LaunchTemplateConstraint where
  toJSON LaunchTemplateConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
               "Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AcceptLanguage" LaunchTemplateConstraint where
  type PropertyType "AcceptLanguage" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" LaunchTemplateConstraint where
  type PropertyType "Description" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint
        {description = Prelude.pure newValue, ..}
instance Property "PortfolioId" LaunchTemplateConstraint where
  type PropertyType "PortfolioId" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {portfolioId = newValue, ..}
instance Property "ProductId" LaunchTemplateConstraint where
  type PropertyType "ProductId" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {productId = newValue, ..}
instance Property "Rules" LaunchTemplateConstraint where
  type PropertyType "Rules" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {rules = newValue, ..}